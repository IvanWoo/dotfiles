#!/usr/bin/env bash
set -euo pipefail

check_brew() {
    which -s brew
    if [[ $? != 0 ]]; then
        echo "Installing Homebrew"
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    else
        echo "Homebrew already installed, updating..."
        brew update
    fi

    echo "Turning off the Homebrew analytics"
    brew analytics off
}
