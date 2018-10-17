#!/usr/bin/env bash
set -euo pipefail

base="$(basename "$0" .sh)"

echo "TEST: $base: Checking expected files..." >&2
[ -f UNLICENSE ]
[ -f README.md ]
