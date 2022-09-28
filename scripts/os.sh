# Checks current OS and stores in "machine" variable

# Check current OS
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    *)          machine=Windows;;
esac

# "uname -s" will also prompt "Linux" in WSL, so check of we are indeed in WSL
# In WSL, /proc/version file has the substring "microsoft" in it
if [[ -f /proc/version ]] && grep -qi microsoft /proc/version $>/dev/null; then
    machine=Windows
fi