#!/usr/bin/env bash

# GAIA-QAO-AdVent Local Services Start & Manage Script
# Version: 2.0.0
# Author: GAIA-QAO Operations Team
#
# Description:
# A utility script to start, stop, and manage the local Docker Compose environment.
# Provides convenient shortcuts for common Docker Compose operations.
#
# Usage: ./start.sh [COMMAND]
# Commands:
#   up (default) : Build (if necessary) and start all services in detached mode.
#   down         : Stop and remove all services, containers, and networks.
#   stop         : Stop all running services without removing them.
#   logs         : Follow the logs of all running services.
#   ps           : Show the status of all services.
#   clean        : Bring down the environment and remove volumes (DANGEROUS).
#   restart      : A shortcut for 'down' followed by 'up'.

set -e # Exit immediately if a command exits with a non-zero status.

# --- ANSI Color Codes ---
C_HEADER="\033[95m"
C_BLUE="\033[94m"
C_CYAN="\033[96m"
C_GREEN="\033[92m"
C_WARN="\033[93m"
C_FAIL="\033[91m"
C_END="\033[0m"
C_BOLD="\033[1m"

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

# --- Check for Dependencies ---
check_docker() {
    if ! command -v docker &> /dev/null || ! command -v docker-compose &> /dev/null; then
        echo -e "${C_FAIL}ERROR: 'docker' and/or 'docker-compose' not found. Please run scripts/setup.sh first.${C_END}"
        exit 1
    fi
}

# --- Command Functions ---
start_services() {
    log_header "Starting GAIA-QAO Local Services"
    log_info "Building new or changed images and starting containers..."
    docker-compose -f docker-compose.yml up --build -d
    log_success "All services started in detached mode."
    docker-compose ps
}

stop_services() {
    log_header "Stopping GAIA-QAO Local Services"
    docker-compose stop
    log_success "Services stopped."
}

bring_down_services() {
    log_header "Bringing Down GAIA-QAO Local Environment"
    docker-compose down
    log_success "Environment stopped and containers removed."
}

clean_environment() {
    log_header "Cleaning GAIA-QAO Local Environment (DANGEROUS)"
    log_warn "This will stop all services and REMOVE ALL VOLUMES (e.g., database data)."
    read -p "Are you sure you want to continue? [y/N] " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        log_info "Proceeding with full clean..."
        docker-compose down --volumes --remove-orphans
        log_success "Environment completely cleaned."
    else
        log_info "Clean operation cancelled."
    fi
}

follow_logs() {
    log_header "Following Logs for All Services"
    log_info "Press Ctrl+C to stop following."
    docker-compose logs -f
}

show_status() {
    log_header "Current Status of GAIA-QAO Local Services"
    docker-compose ps
}

# --- Main Execution Logic ---
main() {
    check_docker

    COMMAND=${1:-up} # Default to 'up' if no command is provided

    case "$COMMAND" in
        up)
            start_services
            ;;
        down)
            bring_down_services
            ;;
        stop)
            stop_services
            ;;
        logs)
            follow_logs
            ;;
        ps)
            show_status
            ;;
        clean)
            clean_environment
            ;;
        restart)
            log_header "Restarting Environment"
            bring_down_services
            start_services
            ;;
        *)
            echo -e "${C_FAIL}Error: Unknown command '$COMMAND'${C_END}"
            echo "Usage: $0 [up|down|stop|logs|ps|clean|restart]"
            exit 1
            ;;
    esac
}

# Execute main function with all script arguments
main "$@"
