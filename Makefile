all: base graphical languages tools

base: setup
	
setup:
	sudo xbps-install -y stow xtools neovim tmux yazi zsh autorandr
	mkdir $HOME/.dotfiles
	cp -r ./.* $HOME/.dotfiles/
	cp -r ./* $HOME/.dotfiles/
	stow $HOME/.dotfiles/

graphical: graphical-xorg graphical-river

graphical-xorg: 
	sudo xbps-install -y xorg picom feh bspwm sxhkd wezterm firefox
graphical-river:
	sudo xbps-install -y river wezterm firefox 

languages: rust haskell java javascript 

rust: 
	sudo xbps-install -y rustup
	mkdir --parents ~/projects/rust

haskell: 
	sudo xbps-install -y ghc
	mkdir --parents ~/projects/haskell

java: 
	sudo xbps-install -y openjdk21 maven gradle 
	mkdir --parents ~/projects/java

javascript: 
	sudo xbps-install -y nodejs
	mkdir --parents ~/projects/javascript

