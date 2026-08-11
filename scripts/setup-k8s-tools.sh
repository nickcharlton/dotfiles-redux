#!/bin/sh

k8s_version=v1.36

if ! command -v curl > /dev/null; then
	echo "curl is required" >&2
	exit 1
fi

if ! command -v gpg > /dev/null; then
	echo "gnupg is required" >&2
	exit 1
fi

if ! command -v kubectl > /dev/null; then
	if [ ! -f "/etc/apt/keyrings/kubernetes-apt-keyring.gpg" ]; then
		curl -fsSL https://pkgs.k8s.io/core:/stable:/${k8s_version}/deb/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg
		sudo chmod 644 /etc/apt/keyrings/kubernetes-apt-keyring.gpg
	fi

	if [ ! -f "/etc/apt/sources.list.d/kubernetes.list" ]; then
		echo "deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/${k8s_version}/deb/ /" | sudo tee /etc/apt/sources.list.d/kubernetes.list
		sudo chmod 644 /etc/apt/sources.list.d/kubernetes.list
	fi

	sudo apt-get update
	sudo apt-get install -y kubectl
fi

if ! command -v helm > /dev/null; then
	if [ ! -f "/etc/apt/keyrings/helm.gpg" ]; then
		curl -fsSL https://packages.buildkite.com/helm-linux/helm-debian/gpgkey | sudo gpg --dearmor -o /etc/apt/keyrings/helm.gpg
		sudo chmod 644 /etc/apt/keyrings/helm.gpg
	fi

	if [ ! -f "/etc/apt/sources.list.d/helm.list" ]; then
		echo "deb [signed-by=/etc/apt/keyrings/helm.gpg] https://packages.buildkite.com/helm-linux/helm-debian/any/ any main" | sudo tee /etc/apt/sources.list.d/helm.list
		sudo chmod 644 /etc/apt/sources.list.d/helm.list
	fi

	sudo apt-get update
	sudo apt-get install -y helm
fi
