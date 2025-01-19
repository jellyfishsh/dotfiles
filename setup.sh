
# CLI Tools
sudo xbps-install -y stow xtools neovim tmux yazi zsh starship

mkdir $HOME/.dotfiles
cp ./.stow-local-ignore $HOME/.dotfiles/
cp -r ./.* $HOME/.dotfiles/
cp -r ./* $HOME/.dotfiles/
cd $HOME/.dotfiles && stow . && cd -

sudo xbps-install -y fira-code river wezterm firefox 
sudo xbps-install -y rustup ghc openjdk21 apache-maven gradle nodejs

mkdir --parents ~/projects/rust
mkdir --parents ~/projects/haskell
mkdir --parents ~/projects/java
mkdir --parents ~/projects/javascript
