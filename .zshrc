# Created by newuser for 5.9

export XDG_RUNTIME_DIR=/run/user/$(id -u)
export PATH="$PATH:$HOME/.local/bin"
eval "$(starship init zsh)"

[ -f "/home/cfigueroa/.ghcup/env" ] && . "/home/cfigueroa/.ghcup/env" # ghcup-env