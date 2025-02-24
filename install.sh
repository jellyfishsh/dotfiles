# Variables
$BASE=stow xtools neovim tmux yazi zsh starship unzip
$LICENSES=void-repo-nonfree void-repo-multilib
$GUI=font-firacode river wezterm firefox dbus elogind pipewire wireplumber ffmpeg rofi
$LS=lua-language-server
$LANGS=rustup openjdk21 apache-maven gradle nodejs
$TOOLS=tar xz make curl perl gcc binutils pkg-config waybar
$LIBS=gmp-devel glibc-devel libffi-devel  ncurses-devel ncurses-libtinfo-libs

# CLI Tools
sudo xbps-install -y $BASE 
sudo xbps-install -Sy $LICENSES

#Dotfiles configuration
mkdir $HOME/.dotfiles
cp ./.stow-local-ignore $HOME/.dotfiles/
cp -r ./.* $HOME/.dotfiles/
cp -r ./* $HOME/.dotfiles/
cd $HOME/.dotfiles && stow . && cd -


#Projects configuration
mkdir --parents ~/projects/rust
mkdir --parents ~/projects/haskell
mkdir --parents ~/projects/java
mkdir --parents ~/projects/javascript

# Setup zsh
chsh -s $(which zsh)

# Additional tools
sudo xbps-install -y $GUI $LANGS $LS $TOOLS $LIBS
sudo npm i -g typescript typescript-language-server

# Setup river
sudo ln -s /etc/sv/dbus  /var/service
sleep 1
sudo sv up dbus

# Setup wireplumber (per user)
: "${XDG_CONFIG_HOME:=${HOME}/.config}"
mkdir -p "${XDG_CONFIG_HOME}/pipewire/pipewire.conf.d"
ln -s /usr/share/examples/pipewire/20-pipewire-pulse.conf "${XDG_CONFIG_HOME}/pipewire/pipewire.conf.d/"


# Haskell 
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh

###### EXTRA ######

# setting up custom 
mkdir -p $HOME/.local/bin
mkdir -p $HOME/.local/binpkgs

exit
