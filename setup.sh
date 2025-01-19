sudo xbps-install -y stow xtools neovim tmux yazi zsh 
mkdir $HOME/.dotfiles
cp ./.stow-local-ignore $HOME/.dotfiles/
stow $HOME/.dotfiles/

cp -r ./.* $HOME/.dotfiles/
cp -r ./* $HOME/.dotfiles/

sudo xbps-install -y xorg picom feh bspwm sxhkd wezterm firefox autorandr
sudo xbps-install -y river wezterm firefox 
sudo xbps-install -y rustup ghc openjdk21 maven gradle nodejs

mkdir --parents ~/projects/rust
mkdir --parents ~/projects/haskell
mkdir --parents ~/projects/java
mkdir --parents ~/projects/javascript

