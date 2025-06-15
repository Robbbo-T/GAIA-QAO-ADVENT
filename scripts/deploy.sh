#!/usr/bin/env bash

# GAIA-QAO-AdVent Unified Deployment Script
# Version: 2.0.0
# Author: GAIA-QAO Operations Team
#
# Description:
# This script orchestrates the deployment of GAIA-QAO services to a target
# Kubernetes environment. It handles environment validation, building, tagging,
# pushing container images, and deploying applications using Kustomize and Helm.
#
# Usage: ./deploy.sh <ENVIRONMENT> <VEHICLE_CONFIG>
#   ENVIRONMENT:      [development | staging | production]
#   VEHICLE_CONFIG:   [BWBQ100 | BWBQ250 | STS-100]

set -e # Exit immediately if a command exits with a non-zero status.
set -o pipefail # The return value of a pipeline is the status of the last command to exit with a non-zero status.

# --- ANSI Color Codes ---
C_HEADER="\033[95m"
C_BLUE="\033[94m"
C_CYAN="\033[96m"
C_GREEN="\033[92m"
C_WARN="\033[93m"
C_FAIL="\033[91m"
C_END="\033[0m"
C_BOLD="\033[1m"
C_UNDERLINE="\033[4m"

# --- Script Functions ---
log_header() {
    echo -e "\n${C_BOLD}${C_HEADER}>>> $1${C_END}"
}

log_info() {
    echo -e "${C_CYAN}INFO: $1${C_END}"
}

log_success() {
    echo -e "${C_GREEN}SUCCESS: $1${C_END}"
}

log_warn() {
    echo -e "${C_WARN}WARNING: $1${C_END}"
}

log_error() {
    echo -e "${C_FAIL}ERROR: $1${C_END}" >&2
    exit 1
}

# --- Pre-flight Checks ---
check_dependencies() {
    log_header "1. Checking Dependencies"
    local missing=0
    for cmd in docker kubectl kustomize helm git; do
        if ! command -v "$cmd" &> /dev/null; then
            log_warn "Command not found: $cmd"
            missing=1
        else
            log_info "$cmd is installed."
        fi
    done
    [ "$missing" -eq 1 ] && log_error "One or more required commands are not installed. Aborting."
    log_success "All dependencies are present."
}

validate_input() {
    log_header "2. Validating Input Parameters"
    if [[ -z "$1" ]] || [[ -z "$2" ]]; then
        log_error "Usage: $0 <ENVIRONMENT> <VEHICLE_CONFIG>\n  e.g., $0 staging BWBQ100"
    fi

    case "$1" in
        development|staging|production)
            ENV=$1
            log_info "Target Environment: ${C_BOLD}${ENV}${C_END}"
            ;;
        *)
            log_error "Invalid environment '$1'. Must be one of: development, staging, production."
            ;;
    esac

    case "$2" in
        BWBQ100|BWBQ250|STS-100)
            VEHICLE_CONFIG=$2
            log_info "Vehicle Configuration: ${C_BOLD}${VEHICLE_CONFIG}${C_END}"
            ;;
        *)
            log_error "Invalid vehicle configuration '$2'. Must be one of: BWBQ100, BWBQ250, STS-100."
            ;;
    esac
}

# --- Deployment Steps ---
configure_environment() {
    log_header "3. Configuring Deployment Environment"
    
    # Load environment variables from .env file
    if [ -f .env ]; then
        log_info "Loading environment variables from .env file."
        set -o allexport
        source .env
        set +o allexport
    else
        log_warn ".env file not found. Using default values."
    fi

    # Set defaults for required variables if not set
    REGISTRY_URL=${REGISTRY_URL:-"registry.gaia-qao.cloud"}
    KUBE_CONTEXT=${KUBE_CONTEXT:-"gaia-qao-cluster-${ENV}"}
    
    log_info "Docker Registry: $REGISTRY_URL"
    log_info "Kubernetes Context: $KUBE_CONTEXT"

    log_info "Setting Kubernetes context to '$KUBE_CONTEXT'..."
    if ! kubectl config use-context "$KUBE_CONTEXT"; then
        log_error "Failed to set Kubernetes context. Is '$KUBE_CONTEXT' configured?"
    fi
    
    log_info "Verifying connection to cluster..."
    if ! kubectl cluster-info &> /dev/null; then
        log_error "Cannot connect to the Kubernetes cluster. Check your kubectl configuration."
    fi

    log_success "Environment configured and connected to cluster."
}

build_and_tag_images() {
    log_header "4. Building and Tagging Container Images"
    
    # Generate a unique tag based on Git commit and timestamp
    GIT_COMMIT_SHORT=$(git rev-parse --short HEAD)
    TIMESTAMP=$(date +%Y%m%d%H%M%S)
    IMAGE_TAG="${VEHICLE_CONFIG}-${GIT_COMMIT_SHORT}-${TIMESTAMP}"

    log_info "Generated Image Tag: ${C_BOLD}${IMAGE_TAG}${C_END}"

    # List of services to build (simulated)
    SERVICES=("api-gateway" "telemetry-processor" "qns-solver" "flightops-dashboard")
    
    for SERVICE in "${SERVICES[@]}"; do
        log_info "Building image for service: $SERVICE"
        
        # In a real scenario, this would point to a specific Dockerfile
        # e.g., docker build -f "services/${SERVICE}/Dockerfile" -t ...
        docker build -t "${REGISTRY_URL}/gaia-qao/${SERVICE}:${IMAGE_TAG}" . -f "docker/Dockerfile.${SERVICE}"
        
        log_info "Pushing ${SERVICE}:${IMAGE_TAG} to registry..."
        docker push "${REGISTRY_URL}/gaia-qao/${SERVICE}:${IMAGE_TAG}"
    done

    log_success "All container images built, tagged, and pushed."
    # Export the tag for use in deployment steps
    export IMAGE_TAG
}

deploy_applications() {
    log_header "5. Deploying Applications to Kubernetes"
    
    NAMESPACE="gaia-qao-${VEHICLE_CONFIG}"
    log_info "Deploying to namespace: ${NAMESPACE}"

    # --- Deploy base infrastructure using Helm ---
    log_info "Deploying base infrastructure (e.g., RabbitMQ, Redis) via Helm..."
    helm upgrade --install rabbitmq bitnami/rabbitmq \
        --namespace "$NAMESPACE" \
        --create-namespace \
        -f "kubernetes/helm/values-rabbitmq-${ENV}.yaml" --wait

    # --- Deploy core services using Kustomize ---
    log_info "Applying Kustomize overlay for environment: ${ENV}"

    # Use a temporary directory for the kustomized output
    KUSTOMIZE_OUT_DIR=$(mktemp -d)
    
    log_info "Generating manifests with Kustomize..."
    kustomize build "kubernetes/overlays/${ENV}" > "${KUSTOMIZE_OUT_DIR}/manifest.yaml"
    
    # Here you could use a tool like 'sed' to replace placeholder tags if needed,
    # but a better practice is to have kustomize do it.
    # Assuming kustomize patches the image tag.
    
    log_info "Applying manifests to the cluster..."
    kubectl apply -f "${KUSTOMIZE_OUT_DIR}/manifest.yaml"
    
    # Clean up temporary directory
    rm -rf "${KUSTOMIZE_OUT_DIR}"

    log_success "Kustomize manifests applied."
}

verify_deployment() {
    log_header "6. Verifying Deployment Status"
    
    NAMESPACE="gaia-qao-${VEHICLE_CONFIG}"
    log_info "Waiting for all deployments in namespace '$NAMESPACE' to be ready..."
    
    # Wait for all deployments to complete their rollout
    if ! kubectl wait --for=condition=available --timeout=300s deployment -l app.kubernetes.io/part-of=gaia-qao -n "$NAMESPACE"; then
        log_error "Deployment verification failed. Not all pods are ready."
    fi
    
    log_success "All deployments are available and ready."
    
    # --- Final Smoke Test ---
    # In a real scenario, this would hit an API endpoint or check a service status
    POD_NAME=$(kubectl get pods -n "$NAMESPACE" -l app=api-gateway -o jsonpath='{.items[0].metadata.name}')
    log_info "Running smoke test against api-gateway pod: $POD_NAME"
    if ! kubectl exec -n "$NAMESPACE" "$POD_NAME" -- curl -s --fail http://localhost:8080/health; then
        log_error "Smoke test failed: Health check endpoint is not responding correctly."
    fi
    
    log_success "Smoke test passed."
}


# --- Main Execution ---
main() {
    validate_input "$@"
    check_dependencies
    configure_environment
    build_and_tag_images
    deploy_applications
    verify_deployment
    
    log_header "🎉 GAIA-QAO Deployment to ${ENV} for ${VEHICLE_CONFIG} completed successfully! 🎉"
}

# Execute main function with all script arguments
main "$@"
