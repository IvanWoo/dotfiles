#!/usr/bin/env bash
set -euo pipefail

BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "${BASE_DIR}/config.sh"

main() {
    check_brew
    cd brew
    LOCK_FILE="Brewfile.lock.json"
    if test -f "$LOCK_FILE"; then
        rm $LOCK_FILE
    fi
    brew bundle dump -f
}

main
