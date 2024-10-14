# This is a script relevant to specific machines at work only

########################## export proxy settings ###################################

export http_proxy=http://wcmproxy.pgo.local:80/
export https_proxy=http://wcmproxy.pgo.local:80/

################################# variables ########################################
 
D_PROJECTS="/mnt/d/Projects"
C_HOME="/mnt/c/Users/MMustafa"
export C_PROJECTS="/mnt/c/Projects" # export variable to make available to all child processes of shell

# shortcut to open todo
vimtodo="vim ~/.todo"

################################# all aliases #######################################

# Home directory
alias cdhome="cd $C_HOME/"

# Project local directories
alias cdre="cd $D_PROJECTS/Review"
alias cdec="cd $D_PROJECTS/e4.6"
alias cdhatch3="cd $D_PROJECTS/Hatch3"
alias cde5="cd $C_PROJECTS/e5.0"
alias cdbernina="cd $C_PROJECTS/BERNINA"

# Alias sudo to sudo -E for proxy since env variables need to be preserved (which have the http/s proxy settings)
alias sudo="sudo -E"

# export PATH for code.exe
export PATH=$PATH:/mnt/c/Users/mmustafa/AppData/Local/Programs/Micsoroft\ VS\ Code/bin

# alias to clean
#alias clean="find ./wesp -wholename \"**/*Debug$1*\" -exec rm -rf {} +"

# Usage: clean "DebugXXX"
# 	 clean "ReleaseXXX"
#	 Where XXX is the product code which can be ES, WH, WDC etc
function clean () {
    find ./wesp -wholename "**/*$1*" -exec rm -r {} +
}

# inevitably install windows packages as we know this is a windows system
# We have this installed so comment out for now
# source ~/scripts/install-packages-windows.sh

# Opens sln files
# Usage: sln wesp.sln
sln ()
{
    filename=`rgf $1`
    filename=$(wslpath -w $filename)
    echo Opening solution file $fileName

    explorer.exe $filename
}
