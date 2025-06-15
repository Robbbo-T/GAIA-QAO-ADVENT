#!/bin/bash
# GAIA-QAO-AdVent - Production Deployment Script

set -e

echo "GAIA-QAO-AdVent :: Production Deployment"
echo "========================================"

# 1. Build Docker images for all core services
echo "[1/4] Building Docker images..."
docker-compose -f docker-compose.prod.yml build

# 2. Pull/update required images (in case of external registry)
echo "[2/4] Pulling latest images from registry..."
docker-compose -f docker-compose.prod.yml pull

# 3. Start services in production mode
echo "[3/4] Launching services in production mode..."
docker-compose -f docker-compose.prod.yml up -d

# 4. Show deployed service status
echo "[4/4] Current deployment status:"
docker-compose -f docker-compose.prod.yml ps

echo "========================================"
echo "GAIA-QAO-AdVent platform deployed in production mode!"
echo "Access the dashboard at: http://localhost:3000"
