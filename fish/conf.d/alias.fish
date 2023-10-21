# setup the default alias
# how to: add below code snippit into the config.fish
# if type -q __default_alias
#     __default_alias
# end
function __default_alias
    alias vim nvim
    alias docker nerdctl

    alias k "kubectl"
    alias kctx "kubectl config use-context (kubectl config get-contexts -o=name | fzf)"

    # git
    alias glo "git log --oneline"

    # kitty integration
    if set -q KITTY_INSTALLATION_DIR
        alias icat="kitty +kitten icat --align=left"
        alias imgcat=icat
        alias d="kitty +kitten diff"
    end

    alias tailscale /Applications/Tailscale.app/Contents/MacOS/Tailscale
    alias cot /Applications/CotEditor.app/Contents/SharedSupport/bin/cot
end
