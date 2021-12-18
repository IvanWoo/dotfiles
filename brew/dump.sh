#!/usr/bin/env bash
set -eu -o pipefail

BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "${BASE_DIR}/config.sh"

main() {
    check_brew
    cd brew
    brew bundle dump -f
}

main
