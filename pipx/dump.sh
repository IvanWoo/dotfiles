#!/usr/bin/env bash
set -euo pipefail

BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "${BASE_DIR}/config.sh"

main() {
    check_pipx
    echo "dummping pipx to ${PIPX_DUMP_FILE}"
    pipx list | grep package | awk -F' ' '{print $2}' | tee $PIPX_DUMP_FILE
}

main
