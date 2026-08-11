#!/bin/sh

set -e

chnode_version=0.4.3
nodebuild_version=5.4.49

if [ ! -d "/usr/local/share/chnode" ]; then
	curl -Lo chnode-$chnode_version.tar.gz https://github.com/tkareine/chnode/archive/refs/tags/v$chnode_version.tar.gz
	tar -xzvf chnode-$chnode_version.tar.gz
	cd chnode-$chnode_version/
	sudo make install

	cd ../
	rm chnode-$chnode_version.tar.gz
	rm -rf chnode-$chnode_version
fi

if ! command -v node-build > /dev/null; then
	curl -Lo node-build-$nodebuild_version.tar.gz https://github.com/nodenv/node-build/archive/refs/tags/v$nodebuild_version.tar.gz
	tar -xzvf node-build-$nodebuild_version.tar.gz
	cd node-build-$nodebuild_version/
	sudo ./install.sh

	cd ../
	rm node-build-$nodebuild_version.tar.gz
	rm -rf node-build-$nodebuild_version
fi
