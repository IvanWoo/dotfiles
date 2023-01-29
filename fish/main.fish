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

function _link
    cd "$DIR/conf.d"
    for f in *
        set src "$PWD/$f"
        set dst "$HOME/.config/fish/conf.d"
        printf "Linking %s to %s\n" "$src" "$dst"
        ln -sf "$src" "$dst"
    end
end

function main
    _omf
    _fisher
    _link
end

main
