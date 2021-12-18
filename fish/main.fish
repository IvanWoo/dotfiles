#!/usr/bin/env fish

set DIR (cd (dirname (status -f)); and pwd) 

function _omf
    if set -q $OMF_PATH
        curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
    else
        echo "omf already installed"
    end
end

function _fisher
    curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher

    set FISH_PLUGINS "fish_plugins"
    ln -sf "$DIR/$FISH_PLUGINS" "$__fish_config_dir/$FISH_PLUGINS"

    fisher update
end

function main
    _omf
    _fisher
end

main
