#!/usr/bin/env bash
# Simulated "fprime-ci build": passes iff the overlaid F´ revision still supports this project.
set -euo pipefail
EXT_ID="$(cat ci/ext-id)"
FPRIME_SHA="$(git -C lib/fprime rev-parse HEAD)"
echo "Building ${EXT_ID} against F´ ${FPRIME_SHA}"
if ! grep -qx "${EXT_ID}" lib/fprime/compat.txt; then
  echo "::error::F´ ${FPRIME_SHA} does not list ${EXT_ID} in compat.txt (simulated build break)"
  exit 1
fi
mkdir -p build-artifacts
echo "${EXT_ID} built against ${FPRIME_SHA}" > build-artifacts/binary.txt
echo "build ok"
