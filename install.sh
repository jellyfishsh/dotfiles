# CLI Tools
sudo xbps-install -y stow xtools neovim tmux yazi zsh starship
sudo xbps-install -Sy void-repo-nonfree
sudo xbps-install -Sy void-repo-multilib

mkdir $HOME/.dotfiles
cp ./.stow-local-ignore $HOME/.dotfiles/
cp -r ./.* $HOME/.dotfiles/
cp -r ./* $HOME/.dotfiles/
cd $HOME/.dotfiles && stow . && cd -

mkdir --parents ~/projects/rust
mkdir --parents ~/projects/haskell
mkdir --parents ~/projects/java
mkdir --parents ~/projects/javascript

# Setup zsh
chsh -s $(which zsh)

sudo xbps-install -y font-firacode river wezterm firefox dbus elogind pipewire wireplumber ffmpeg eww rofi
sudo xbps-install -y rustup openjdk21 apache-maven gradle nodejs unzip
sudo xbps-install -y binutils curl gcc gmp-devel glibc-devel libffi-devel make ncurses-devel ncurses-libtinfo-libs perl pkg-config tar xz
sudo xbps-install -y lua-language-server
sudo npm i -g typescript typescript-language-server

# Setup river
sudo ln -s /etc/sv/dbus  /var/service
sleep 1
sudo sv up dbus

# Setup wireplumber (per user)
: "${XDG_CONFIG_HOME:=${HOME}/.config}"
mkdir -p "${XDG_CONFIG_HOME}/pipewire/pipewire.conf.d"
ln -s /usr/share/examples/pipewire/20-pipewire-pulse.conf "${XDG_CONFIG_HOME}/pipewire/pipewire.conf.d/"


###### EXTRA ######

# setting up custom 
mkdir -p $HOME/.local/bin
mkdir -p $HOME/.local/binpkgs

exit
