# Customised bash code to be sourced in any .bashrc file

# Install all required packages (debian)
packages=( vim neovim tmux python3 )
for package in $packages; do
	dpkg-query -l $package >/dev/null 
	if [ $? -ne 0 ]; then
		sudo apt-get install $package
	fi
done

################################# all aliases #######################################

# Use nvim
alias vim="nvim"

# Shortcuts to windows C and D drive from linux
alias cdc="cd /mnt/c"
alias cdd="cd /mnt/d"
alias grep="grep --color='auto'"

# grep files from list of tracked files on git
alias gitgrep="git ls-files | grep $@"
