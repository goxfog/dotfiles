#!/bin/bash

packages="
    	vim
	build-essential
	cmake
	git-core
	openssh-server

"
for package in $packages; do
	apt-get install -y $package
done
