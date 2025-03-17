#!/bin/sh

# Builds neovim from a given tag and installs using a built .deb
#
# https://github.com/neovim/neovim/blob/master/BUILD.md

TAG=v0.10.4

set -e

sudo apt-get install -qy ninja-build gettext cmake curl build-essential

cd /tmp || exit 1

git clone --depth=1 --branch=$TAG git@github.com:neovim/neovim.git
cd neovim || exit 1

make CMAKE_BUILD_TYPE=Release
cd build && cpack -G DEB && sudo dpkg -i nvim-linux-x86_64.deb
