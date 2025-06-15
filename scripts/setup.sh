#!/usr/bin/env bash

# GAIA-QAO-AdVent Local Development Environment Setup Script
# Version: 2.0.0
# Author: GAIA-QAO Core Team
#
# Description:
# This script prepares the local development environment for the GAIA-QAO project.
# It performs the following actions:
# 1. Checks for all necessary system dependencies (Git, Docker, Node.js, etc.).
# 2. Installs Node.js dependencies via npm.
# 3. Creates a local .env file from the .env.example template.
# 4. Sets up Git hooks for pre-commit checks using a simple script.
# 5. Builds and starts the local Docker Compose stack.
# 6. Runs the quantum_setup.py script to initialize quantum configs.

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

# --- Setup Steps ---

# 1. Dependency Checks
check_dependencies() {
    log_header "1. Checking System Dependencies"
    local missing=0
    for cmd in git docker docker-compose node npm make python3; do
        if ! command -v "$cmd" &> /dev/null; then
            log_warn "Command not found: $cmd. Please install it before proceeding."
            missing=1
        else
            log_info "$cmd is installed."
        fi
    done
    [ "$missing" -eq 1 ] && log_error "One or more required dependencies are not installed. Aborting setup."
    log_success "All system dependencies are present."
}

# 2. Install Node.js Dependencies
install_node_dependencies() {
    log_header "2. Installing Node.js Dependencies"
    if [ -f "package.json" ]; then
        log_info "package.json found. Running 'npm install'..."
        if npm install; then
            log_success "Node.js dependencies installed successfully."
        else
            log_error "npm install failed. Please check for errors."
        fi
    else
        log_warn "package.json not found. Skipping Node.js dependency installation."
    fi
}

# 3. Create Local Environment File
create_env_file() {
    log_header "3. Setting up Local Environment File (.env)"
    if [ -f ".env" ]; then
        log_warn ".env file already exists. Skipping creation."
    elif [ -f ".env.example" ]; then
        log_info "Creating .env file from .env.example..."
        cp .env.example .env
        log_success ".env file created. Please review and update it with your local configuration."
    else
        log_error ".env.example not found. Cannot create .env file."
    fi
}

# 4. Setup Git Hooks
setup_git_hooks() {
    log_header "4. Setting up Git Hooks"
    local hook_dir=".git/hooks"
    local pre_commit_hook="${hook_dir}/pre-commit"

    if [ ! -d "$hook_dir" ]; then
        log_warn ".git/hooks directory not found. Are you in a Git repository?"
        return
    fi
    
    log_info "Creating pre-commit hook..."
    
    # Create a simple pre-commit script. A real project might use tools like 'pre-commit' or 'husky'.
    cat > "$pre_commit_hook" <<- 'EOF'
#!/bin/bash
echo "Running GAIA-QAO pre-commit checks..."

# Example: Run a linter (replace with actual linter command)
# echo "Running linter..."
# if ! npm run lint; then
#     echo "Linting failed. Commit aborted."
#     exit 1
# fi

# Example: Run tests (replace with actual test command)
# echo "Running tests..."
# if ! npm test; then
#     echo "Tests failed. Commit aborted."
#     exit 1
# fi

echo "Pre-commit checks passed."
exit 0
EOF

    chmod +x "$pre_commit_hook"
    log_success "Pre-commit hook created successfully at ${pre_commit_hook}."
    log_info "This hook is a template. Customize it to add linting, testing, etc."
}

# 5. Initialize Docker Environment
initialize_docker() {
    log_header "5. Initializing Docker Environment"
    log_info "Building and starting local services via Docker Compose..."
    log_info "This may take some time on the first run..."

    if docker-compose -f docker-compose.yml up --build -d; then
        log_success "Docker services are up and running in detached mode."
        log_info "Run 'docker-compose ps' to see the status of containers."
    else
        log_error "Docker Compose failed to start. Check the output for errors."
    fi
}

# 6. Initialize Quantum System Configuration
initialize_quantum_config() {
    log_header "6. Initializing Quantum System Configuration"
    local quantum_script="scripts/quantum_setup.py"
    if [ -f "$quantum_script" ]; then
        log_info "Running quantum_setup.py to create default configuration..."
        if python3 "$quantum_script" check; then
            log_success "Quantum configuration and connectivity check completed."
        else
            log_warn "quantum_setup.py check command reported issues. Please check its logs."
        fi
    else
        log_error "Quantum setup script not found at ${quantum_script}."
    fi
}

# --- Main Execution ---
main() {
    echo -e "${C_BOLD}${C_HEADER}=====================================================${C_END}"
    echo -e "${C_BOLD}${C_HEADER} GAIA-QAO-AdVent Local Environment Setup Utility    ${C_END}"
    echo -e "${C_BOLD}${C_HEADER}=====================================================${C_END}"
    
    check_dependencies
    install_node_dependencies
    create_env_file
    setup_git_hooks
    initialize_docker
    initialize_quantum_config
    
    echo -e "\n${C_BOLD}${C_GREEN}🎉 Setup complete! Your GAIA-QAO development environment is ready. 🎉${C_END}"
    echo -e "${C_CYAN}Next steps:${C_END}"
    echo -e "  - Review and customize the ${C_BOLD}.env${C_END} file with your settings."
    echo -e "  - Customize the Git pre-commit hook at ${C_BOLD}.git/hooks/pre-commit${C_END}."
    echo -e "  - Use ${C_BOLD}'make help'${C_END} to see available development commands."
}

# Execute main function
main
