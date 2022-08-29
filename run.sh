# Run this script to setup your WSL environment

# Decorator
decorate() {
	eval "
		_inner_$(typeset -f $1)
		$1"'() {
			echo >&2 "$1"
			_inner_'"$1"' "$@"
			local ret=$?
			if [ $ret -ne 0 ]; then
				echo "An error occurred!"
			else
				echo >&2 "Done."
			fi
			return "$ret"
		}'
	}

obtain_assets() {
	bash obtain_assets.sh
	return $?
}
decorate obtain_assets
obtain_assets "Obtaining necessary assets..." 

copyAssets() {
	mkdir -p ~/assets && cp ./assets/git-prompt.sh ~/assets
}
decorate copyAssets
copyAssets "Copying assets into relevant locations..."

# Copies bashrc and tmux.conf files into home dir
copyCoreConfigFiles() {
	cp .bashrc ~/.bashrc
	cp .tmux.conf ~/.tmux.conf
}
decorate copyCoreConfigFiles
copyCoreConfigFiles "Copying bashrc and tmux config files..." 

read -p "Is this your work environment (default: no, choose yes/no)? " isWorkEnv
isWorkEnv=${isWorkEnv:-no} # default value is no

copyScripts() {
	printf "\n" >> ~/.bashrc
	echo "#########################################################################" >> ~/.bashrc
	echo "######################### Source custom scripts #########################" >> ~/.bashrc
	echo "#########################################################################" >> ~/.bashrc
	printf "\n" >> ~/.bashrc
	mkdir -p ~/scripts && cp ./scripts/customised.sh ~/scripts/customised.sh
	echo "source ~/scripts/customised.sh" >> ~/.bashrc	
	if [ "$isWorkEnv" == "yes" ]; then
		mkdir -p ~/scripts && cp ./scripts/work.sh ~/scripts
		echo "source ~/scripts/work.sh" >> ~/.bashrc
	fi
}
decorate copyScripts
copyScripts "Copying necesary scripts and modifying bashrc..."

# Source bashrc file
. ~/.bashrc

echo "Setup complete. Enjoy!"
