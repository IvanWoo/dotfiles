#!/usr/bin/env bash
set -euo pipefail

BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "${BASE_DIR}/config.sh"

main() {
    check_pipx
    echo "installing pipx packages from ${PIPX_DUMP_FILE}"
    cat $PIPX_DUMP_FILE | xargs -n1 pipx install
    pipx ensurepath
}

main
