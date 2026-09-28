#!/bin/bash

# Configurable delays (in seconds)
VISION_DELAY=0
SERVER_DELAY=0
FRONTEND_DELAY=2

# Run with delays
echo "Starting vision module..."
python3 -m vision.main &
VISION_PID=$!

echo "Waiting $SERVER_DELAY seconds before starting server..."
sleep $SERVER_DELAY
echo "Starting server..."
python3 -m server.server &
SERVER_PID=$!

echo "Waiting $FRONTEND_DELAY seconds before starting frontend..."
sleep $FRONTEND_DELAY
echo "Starting frontend..."
pnpm dev &
FRONTEND_PID=$!

# Handle termination
trap "kill $VISION_PID $SERVER_PID $FRONTEND_PID; exit" SIGINT SIGTERM

# Wait for all processes
wait