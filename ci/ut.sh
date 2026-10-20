#!/usr/bin/env bash
# Simulated unit tests (independent of F´ revision content).
set -euo pipefail
echo "Running unit tests for $(cat ci/ext-id) against F´ $(git -C lib/fprime rev-parse HEAD)"
sleep 150
echo "unit tests ok"
