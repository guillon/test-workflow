#!/usr/bin/env bash
set -euo pipefail

dir="$(dirname "$0")"

info() { echo "INFO: $1" >&2; }
pass() { echo "PASSED: $1" >&2; }
fail() { echo "FAILED: $1" >&2; }

failed=0
tests=0
for test in "$dir"/test-*.sh; do
    tests=$((tests + 1))
    base="$(basename "$test" .sh)"
    info "Running test $base: $test"
    res=0
    "$test" || res=$?
    [ "$res" = 0 ] || fail "$base, exitcode: $res"
    [ "$res" = 0 ] || failed=$((failed + 1))
    [ "$res" != 0 ] || pass "$base"
done

info "TESTS: $tests, PASSED: $((tests-failed)), FAILED: $failed"
[ $failed = 0 ] || exit 1
    
