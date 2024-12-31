all: base graphical languages

base: setup
	

setup:
	sudo xbps-install -y stow xtools neovim tmux yazi zsh
	stow .


graphical: graphical-xorg graphical-river

graphical-xorg: 
	sudo xbps-install -y xorg picom feh bspwm wezterm firefox
graphical-river:
	sudo xbps-install -y river wezterm firefox 

languages: rust zig haskell java kotlin javascript 

rust: 
	sudo xbps-install -y rustup
	mkdir --parents ~/projects/rust

zig: 
	sudo xbps-install -y zig zls
	mkdir --parents ~/projects/zig

haskell: 
	sudo xbps-install -y ghc
	mkdir --parents ~/projects/zig

java: 
	sudo xbps-install -y openjdk21 maven gradle 
	mkdir --parents ~/projects/java

kotlin:
	sudo xbps-install -y kotlin maven gradle
	mkdir --parents ~/projects/kotlin

javascript: 
