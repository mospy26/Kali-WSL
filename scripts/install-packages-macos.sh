#!/bin/bash
# This script is to install required packages upon setup for Mac OSX

# obtain list of packages and store them since `brew list` takes a while to run
brew_packages=$(brew list | xargs &)

# export PATH to contain all executable binaries in macos
export PATH=$PATH:/usr/local/bin

# Install if does not exist
checkAndInstall () {

    # Run brew in the background since it takes a while
    { echo $brew_packages | grep $1 &>/dev/null 
    if [ $? -ne 0 ]; then
	    brew install $1 &>/dev/null
    fi } & disown
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
