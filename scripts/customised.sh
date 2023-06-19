# Customised bash code to be sourced in any .bashrc file

# For mac users, add "export BASH_SILENCE_DEPRECATION_WARNING=1" in /etc/profile to silence the zsh warning

source ~/scripts/os.sh

# Install all required packages
if [[ $machine = Windows ]] || [[ $machine = Linux ]]; then
    source ~/scripts/install-packages-debian.sh
elif [[ $machine = Mac ]]; then
    source ~/scripts/install-packages-macos.sh
fi

# install nvim plug
if [ ! -f ~/.config/nvim/autoload/plug.vim ]; then
    sh -c 'curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
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

# Use batcat as cat (batcat is enhanced cat with syntax highlighting)
# For debian/ubuntu, the command is "batcat" and for all others its just "bat"`
# we assume that I will always use Debian/Ubuntu machines so Linux means Debian/Ubuntu 
if [[ $machine = Windows ]] || [[ $machine = Linux ]]; then
    alias bcat="batcat"
elif [[ $machine = Mac ]]; then
    alias cat="bat" 
fi

# grep color
alias grep="grep --color='auto'"

# grep files from list of tracked files on git
alias gitgrep="git ls-files | grep $@"

# "close" terminal while leaving process intact
alias close="disown -a && exit"

################################# Windows WSL aliases #######################################

if [[ $machine = Windows ]]; then
	# Shortcuts to windows C and D drive from linux
	alias cdc="cd /mnt/c"
	alias cdd="cd /mnt/d"
fi

####################################### Scripts #############################################
# mkd = make dir and cd into it
mkd() { mkdir -p "$@" && cd "$@"; }
