# Dot files for WSL environment / Linux environments

## Requirements

Must have WSL, Linux or MacOSX and the shell should be bash

## Install

It is recommended to install this in home directory i.e. ~

```sh
git clone https://github.com/mospy26/dotfiles.git .
```

If installing directly in the home directory is not preferred, then clone the repository normally and run the `run.sh` script.

## Things this script won't do

1. You need to install [git-delta](https://github.com/dandavison/delta/releases) yourself. Then you may copy the .gitconfig into /mnt/c/Users/username/ directory (i.e., the windows directory) and finally you can use delta differ. At the current state (without following any aforementioned instructions), git delta only works for WSL and not windows git i,e, git.exe. You may also use `scoop install git-delta` or `choco install git-delta`.
