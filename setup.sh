#!/bin/sh

set -e

kernel=$(uname -s)

if [ "$kernel" = "Linux" ]; then
	sudo apt-get -q update

	if ! expr "$SHELL" : ".*zsh" 1>/dev/null; then
		sudo apt-get install -qy zsh

		sudo chsh -s "$(which zsh)" "$(whoami)"
	fi

	if ! command -v rcup > /dev/null; then
		sudo apt-get install -qy rcm
	fi

	sudo apt-get install -qy neovim python3-pynvim tree tig \
		zsh-syntax-highlighting zsh-autosuggestions

	# Fix for Ghostty Terminfo
	if [ ! -f "/usr/share/terminfo/x/xterm-ghostty" ]; then
		sudo apt-get install -qy ncurses-term
		sudo ln -s /usr/share/terminfo/g/ghostty /usr/share/terminfo/x/xterm-ghostty
	fi
fi

dotfiles_path="$HOME/.dotfiles"

if [ -n "${CODESPACES+set}" ]; then
	dotfiles_path="/workspaces/.codespaces/.persistedshare/dotfiles"
	echo "DOTFILES_DIRS=\"$dotfiles_path\"" >> rcrc

	rm "$HOME/.zshrc"
	rm "$HOME/.zprofile"
	rm "$HOME/.gitconfig"
fi

RCRC="$dotfiles_path/rcrc" rcup -v

mini_nvim_path="$HOME/.local/share/nvim/site/pack/deps/start/mini.nvim"

if [ ! -d "$mini_nvim_path" ]; then
	git clone --filter=blob:none git@github.com:nvim-mini/mini.nvim.git "$mini_nvim_path"
fi
