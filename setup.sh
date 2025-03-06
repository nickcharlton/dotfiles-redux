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

env RCRC="$HOME/dotfiles/rcrc" rcup
