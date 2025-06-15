#!/bin/bash
# GAIA-QAO-AdVent - Unified Start Script

set -e

echo "Starting GAIA-QAO-AdVent Platform"
echo "=================================="

# 1. Start infrastructure (Kafka, InfluxDB, etc.)
echo "[1/3] Launching core infrastructure containers..."
docker-compose up -d kafka zookeeper influxdb

# 2. Wait for infrastructure to become ready
echo "Waiting for Kafka and InfluxDB to be ready..."
sleep 8

# 3. Start telemetry collector (background)
echo "[2/3] Starting telemetry collector..."
cd fleet/ampel360/BWBQ100/telemetry
npm start &
TELEMETRY_PID=$!
cd ../../../..

# 4. Start quantum bridge (background)
echo "[3/3] Starting quantum bridge..."
cd fleet/ampel360/BWBQ100/quantum
# If you have a main entry script, replace below
[ -f "main.py" ] && python3 main.py &
cd ../../../..

# 5. Start dashboard (foreground)
echo "Starting dashboard (React UI)..."
cd fleet/ampel360/BWBQ100/dashboard
npm run dev

# Cleanup background processes on exit
trap "kill $TELEMETRY_PID; exit" INT TERM EXIT
