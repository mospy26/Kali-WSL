# Customised bash code to be sourced in any .bashrc file

# For mac users, add "export BASH_SILENCE_DEPRECATION_WARNING=1" in /etc/profile to silence the zsh warning

source ~/scripts/os.sh
# Install all required packages (debian)
packages=("vim" "neovim" "tmux" "python3" "ranger" "ripgrep")
if [[ $machine = Windows ]] || [[ $machine = Linux ]]; then
	for package in "${packages[@]}"; do
		dpkg-query -l $package &>/dev/null 
		if [ $? -ne 0 ]; then
			sudo apt-get install $package
		fi
	done
elif [[ $machine = Mac ]]; then

	# export PATH to contain all executable binaries in macos
	export PATH=$PATH:/usr/local/bin

	brew_packages=$(brew list | xargs)
	for package in "${packages[@]}"; do
		echo $brew_packages | grep $package &>/dev/null 
		if [ $? -ne 0 ]; then
			brew install $package
		fi
	done
fi

#####################################################################################
########################## set console to work as vim ###############################
#####################################################################################
set -o vi

#####################################################################################
################################# all aliases #######################################
#####################################################################################

# Use nvim
alias vim="nvim"

# grep color
alias grep="grep --color='auto'"

# grep files from list of tracked files on git
alias gitgrep="git ls-files | grep $@"

################################# Windows WSL aliases #######################################

if [[ $machine = Windows ]]; then
	# Shortcuts to windows C and D drive from linux
	alias cdc="cd /mnt/c"
	alias cdd="cd /mnt/d"
fi