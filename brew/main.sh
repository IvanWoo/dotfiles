#!/usr/bin/env bash
set -euo pipefail

BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "${BASE_DIR}/config.sh"

main() {
    check_brew
    cd brew
    brew bundle
}

main
