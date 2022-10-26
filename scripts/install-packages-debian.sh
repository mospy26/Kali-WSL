#!/bin/bash
# This script is to install required packages upon setup for Debian/Ubuntu based linux distros


# Install if does not exist
checkAndInstall () {
    dpkg-query -l $1 &>/dev/null
    if [ $? -ne 0 ]; then
        sudo apt-get install $1
    fi
}

# Install packages with package names common with Mac OSX (packages-common.txt)
readarray -t packages < ~/scripts/packages-common.txt
for package in "${packages[@]}"; do
    checkAndInstall $package
done


# Install packages with different names as Mac OSX

# git-delta v0.14.0 (see https://github.com/dandavison/delta/releases for latest versions)
if [ ! -f ~/scripts/assets/git-delta.deb ]; then
    mkdir -p ~/scripts/assets/ && wget https://github.com/dandavison/delta/releases/download/0.14.0/git-delta_0.14.0_amd64.deb -O ~/scripts/assets/git-delta.deb
    checkAndInstall ~/scripts/assets/git-delta.deb
fi
