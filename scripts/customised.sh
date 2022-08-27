
# Customised bash code to be sourced in any .bashrc file

################################# all aliases #######################################

# alias code to open code.exe
alias code="code.exe"

# Shortcuts to windows C and D drive from linux
alias cdc="cd /mnt/c"
alias cdd="cd /mnt/d"

# grep files from list of tracked files on git
alias gitgrep="git ls-files | grep $@"

################################# any useful methods #######################################

function isWinDir {
    case $PWD/ in
        /mnt/*) return $(true);;
        *) return $(false);;
    esac
}

# Git is incredibly slow in WSL. So instead, use the Windows git.exe in
# WSL if it's installed and we're in a Windows directory
function git {
  if isWinDir
  then
     git.exe "$@"
  else
     /usr/bin/git "$@"
  fi
}

