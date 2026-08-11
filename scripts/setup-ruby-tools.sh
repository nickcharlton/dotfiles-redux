#!/bin/sh

set -e

chruby_version=0.3.9
rubyinstall_version=0.10.2

if [ ! -d "/usr/local/share/chruby" ]; then
	curl -Lo chruby-$chruby_version.tar.gz https://github.com/postmodern/chruby/archive/v$chruby_version.tar.gz
	tar -xzvf chruby-$chruby_version.tar.gz
	cd chruby-$chruby_version/
	sudo make install

	cd ../
	rm chruby-$chruby_version.tar.gz
	rm -rf chruby-$chruby_version
fi

if ! command -v ruby-install > /dev/null; then
	curl -Lo ruby-install-$rubyinstall_version.tar.gz https://github.com/postmodern/ruby-install/archive/v$rubyinstall_version.tar.gz
	tar -xzvf ruby-install-$rubyinstall_version.tar.gz
	cd ruby-install-$rubyinstall_version/
	sudo make install

	cd ../
	rm ruby-install-$rubyinstall_version.tar.gz
	rm -rf ruby-install-$rubyinstall_version
fi
