#!/usr/bin/env bash
set -euo pipefail

VERSION="19.5"

DEST="${HOME}/Library/Preferences/houdini/$VERSION/houdini.env"

link_houdini_env() {
    cd houdini
    src="${PWD}/houdini.env"
    printf "Linking %s to %s\n" "${src}" "${DEST}"
    ln -sf "${src}" "${DEST}"
}

main() {
    link_houdini_env
}

main
