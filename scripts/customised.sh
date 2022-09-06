# Customised bash code to be sourced in any .bashrc file

# Install all required packages (debian)
packages=( neovim tmux )
for package in $packages; do
	dpkg-query -W -f='${Status}' $package >/dev/null | sudo apt-get install $package &>/dev/null
done

################################# all aliases #######################################

# Shortcuts to windows C and D drive from linux
alias cdc="cd /mnt/c"
alias cdd="cd /mnt/d"
alias grep="grep --color='auto'"

# grep files from list of tracked files on git
alias gitgrep="git ls-files | grep $@"
