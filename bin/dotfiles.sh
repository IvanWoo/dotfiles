#!/usr/bin/env bash
set -euo pipefail

update_modules() {
    echo "Updating modules..."
    git submodule update --init --recursive
    git submodule update --recursive --remote
}

link_config() {
    cd config
    for d in */; do
        src="${PWD}/${d}"
        dst="${HOME}/.config"
        printf "Linking %s to %s\n" "${src}" "${dst}"
        ln -sf "${src}" "${dst}"
    done
}

main() {
    update_modules
    link_config
}

main
