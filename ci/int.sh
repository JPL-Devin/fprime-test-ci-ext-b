#!/usr/bin/env bash
# Simulated integration test of a given "platform" using the build artifact.
set -euo pipefail
PLATFORM="${1:?platform}"
echo "Integration test on ${PLATFORM}: $(cat build-artifacts/binary.txt)"
sleep 5
echo "integration ok"
