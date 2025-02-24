# Created by newuser for 5.9

export XDG_RUNTIME_DIR=/run/user/$(id -u)
export PATH="$PATH:$HOME/.local/bin"
[ -f "/home/cfigueroa/.ghcup/env" ] && . "/home/cfigueroa/.ghcup/env" # ghcup-env

function y() {
    local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
    yazi "$@" --cwd-file="$tmp"
    if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
        builtin cd -- "$cwd"
    fi
    rm -f -- "$tmp"
}


export XDG_CURRENT_DESKTOP=river
eval "$(starship init zsh)"

. "/home/cfigueroa/.deno/env"
