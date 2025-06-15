#!/bin/bash
# GAIA-QAO-AdVent - System Setup Script

set -e

echo "GAIA-QAO-AdVent System Setup"
echo "============================"

# 1. Node.js dependencies (root and dashboard)
echo "[1/5] Installing Node.js dependencies..."
npm install
if [ -d "fleet/ampel360/BWBQ100/dashboard" ]; then
  (cd fleet/ampel360/BWBQ100/dashboard && npm install)
fi

# 2. Python dependencies for quantum module
echo "[2/5] Installing Python (quantum) dependencies..."
if [ -d "fleet/ampel360/BWBQ100/quantum" ]; then
  PYTHON=$(which python3 || which python)
  $PYTHON -m pip install -e fleet/ampel360/BWBQ100/quantum || echo "Python install failed (quantum)"
fi

# 3. WASM dependencies
echo "[3/5] Installing WASM dependencies..."
if [ -d "fleet/ampel360/BWBQ100/wasm" ]; then
  (cd fleet/ampel360/BWBQ100/wasm && npm install)
fi

# 4. Telemetry dependencies
echo "[4/5] Installing telemetry dependencies..."
if [ -d "fleet/ampel360/BWBQ100/telemetry" ]; then
  (cd fleet/ampel360/BWBQ100/telemetry && npm install)
fi

# 5. Docker images (optional)
echo "[5/5] Pulling required Docker images..."
docker compose pull || docker-compose pull

echo "Setup complete."
echo "You may now run './start.sh' to launch the GAIA-QAO-AdVent platform."
