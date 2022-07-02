#!/usr/bin/env bash
set -euo pipefail

BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PIPX_DUMP_FILE="${BASE_DIR}/pipx.txt"

check_pipx() {
    which -s pipx || {
        echo "pipx is not installed. Please install pipx."
        exit 1
    }
}
