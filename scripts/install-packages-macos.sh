#!/bin/bash
# This script is to install required packages upon setup for Mac OSX


# Install if does not exist
checkAndInstall () {

    # export PATH to contain all executable binaries in macos
    export PATH=$PATH:/usr/local/bin

    # Run brew in the background since it takes a while
    { brew_packages=$(brew list | xargs)
    for package in "${packages[@]}"; do
	    echo $brew_packages | grep $package &>/dev/null 
	    if [ $? -ne 0 ]; then
		    brew install $package &>/dev/null
	    fi
    done } & disown
}

# Install packages with package names common with Debian/Ubuntu (packages-common.txt)
readarray -t packages < ~/scripts/packages-common.txt
for package in "${packages[@]}"; do
    checkAndInstall $package
done


# Install packages with package names not common with Debian/Ubuntu

# from packages-macos.txt
readarray -t macosPackages < ~/scripts/packages-macos.txt
for package in "${macosPackages[@]}"; do
    checkAndInstall $package
done
