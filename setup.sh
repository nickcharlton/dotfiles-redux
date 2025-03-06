#!/bin/sh

set -e

sudo apt-get -q update

if ! expr "$SHELL" : ".*zsh" 1>/dev/null; then
	sudo apt-get install -qy zsh

	sudo chsh -s "$(which zsh)" "$(whoami)"
fi

if ! command -v rcup > /dev/null; then
	sudo apt-get install -qy rcm
fi

dotfiles_path="$HOME/.dotfiles"

if $CODESPACES; then
	dotfiles_path="/workspaces/.codespaces/.persistedshare/dotfiles"
	echo "DOTFILES_DIRS=\"$dotfiles_path\"" >> rcrc

	rm "$HOME/.zshrc"
	rm "$HOME/.zprofile"
fi

env RCRC="$dotfiles_path/rcrc" rcup
