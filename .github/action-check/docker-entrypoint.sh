#!/usr/bin/env bash
set -euo pipefail

echo "Environment is:"
env

echo "Working dir content: $(pwd):"
ls -laR

echo "Executing tests: tests/tests.sh..."
tests/tests.sh
