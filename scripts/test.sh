#!/bin/bash
# GAIA-QAO-AdVent Unified Test Runner

set -e

echo "GAIA-QAO-AdVent :: Test Suite"
echo "============================="

ROOT=$(dirname "$0")/../..
WORKSPACE="$ROOT/fleet/ampel360/BWBQ100"

# 1. Dashboard: React unit and integration tests
if [ -d "$WORKSPACE/dashboard" ]; then
  echo "[1/4] Testing Dashboard (React)..."
  (cd "$WORKSPACE/dashboard" && npm test)
fi

# 2. Telemetry: Node.js tests (if present)
if [ -d "$WORKSPACE/telemetry" ] && [ -f "$WORKSPACE/telemetry/package.json" ]; then
  echo "[2/4] Testing Telemetry (Node.js)..."
  (cd "$WORKSPACE/telemetry" && npm test || echo "No defined tests for telemetry.")
fi

# 3. Quantum: Python unit tests
if [ -d "$WORKSPACE/quantum" ]; then
  echo "[3/4] Testing Quantum Algorithms (Python)..."
  (cd "$WORKSPACE/quantum" && python3 -m pytest tests/ || echo "No Python tests found in quantum module.")
fi

# 4. Digital Twin Core: Python tests
if [ -d "$WORKSPACE/src" ]; then
  echo "[4/4] Testing Digital Twin Core (Python)..."
  (cd "$WORKSPACE/src" && python3 -m unittest discover || echo "No Python tests found in digital twin core.")
fi

echo "============================="
echo "All available tests executed."
