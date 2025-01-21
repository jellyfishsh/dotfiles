
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

sudo xbps-install -y font-firacode river wezterm firefox dbus elogind pipewire wireplumber
sudo xbps-install -y rustup ghc openjdk21 apache-maven gradle nodejs

# Setup river
sudo ln -s /etc/sv/dbus  /var/service
sudo sv up dbus

exit
