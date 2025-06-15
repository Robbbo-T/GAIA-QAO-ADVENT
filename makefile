# GAIA-QAO-AdVent Makefile

# Variables
NPM=npm
PYTHON=python3
DOCKER_COMPOSE=docker-compose
WORKSPACE=fleet/ampel360/BWBQ100

.PHONY: help install dev build test lint start start-dev start-prod docker-build docker-up docker-down health-check format security-scan clean

help:
	@echo "GAIA-QAO-AdVent Makefile Commands:"
	@echo "  make install         Install all dependencies"
	@echo "  make dev             Start dashboard (React) in dev mode"
	@echo "  make build           Build all workspaces"
	@echo "  make test            Run all tests"
	@echo "  make lint            Run all linters"
	@echo "  make start           Start all services (see start.sh)"
	@echo "  make start-dev       Start services for development"
	@echo "  make start-prod      Start services for production"
	@echo "  make docker-build    Build Docker images"
	@echo "  make docker-up       Start Docker Compose (dev)"
	@echo "  make docker-down     Stop Docker Compose"
	@echo "  make health-check    Run health checks"
	@echo "  make format          Auto-format code"
	@echo "  make security-scan   Run security scans"
	@echo "  make clean           Remove build artifacts"

install:
	$(NPM) install
	cd $(WORKSPACE)/telemetry && $(NPM) install
	cd $(WORKSPACE)/dashboard && $(NPM) install
	cd $(WORKSPACE)/wasm && $(NPM) install
	cd $(WORKSPACE)/quantum && $(PYTHON) -m pip install -e .

dev:
	cd $(WORKSPACE)/dashboard && $(NPM) run dev

build:
	$(NPM) run build --workspaces

test:
	$(NPM) run test --workspaces
	cd $(WORKSPACE)/quantum && $(PYTHON) -m pytest
	cd $(WORKSPACE)/src && $(PYTHON) -m unittest discover

lint:
	$(NPM) run lint --workspaces
	cd $(WORKSPACE)/src && flake8 .
	cd $(WORKSPACE)/quantum && flake8 .

start:
	./start.sh

start-dev:
	./start.sh --dev

start-prod:
	$(DOCKER_COMPOSE) -f docker-compose.prod.yml up -d

docker-build:
	$(DOCKER_COMPOSE) build

docker-up:
	$(DOCKER_COMPOSE) up -d

docker-down:
	$(DOCKER_COMPOSE) down

health-check:
	curl -f http://localhost:3000 || echo "Dashboard not responding"
	curl -f http://localhost:8080 || echo "Telemetry API not responding"
	curl -f http://localhost:8086/ping || echo "InfluxDB not responding"

format:
	black $(WORKSPACE)/src
	isort $(WORKSPACE)/src
	cd $(WORKSPACE)/dashboard && $(NPM) run format

security-scan:
	bandit -r $(WORKSPACE)/src || true
	docker scan gaia-qao/digital-twin:latest || true

clean:
	rm -rf $(WORKSPACE)/dashboard/node_modules
	rm -rf $(WORKSPACE)/telemetry/node_modules
	rm -rf $(WORKSPACE)/wasm/node_modules
	rm -rf $(WORKSPACE)/dashboard/build
	rm -rf $(WORKSPACE)/wasm/build
	rm -rf $(WORKSPACE)/src/__pycache__
	rm -rf $(WORKSPACE)/quantum/__pycache__
	rm -rf dist build .pytest_cache .mypy_cache
