# Run this script to setup your WSL environment

# Ask whether in home directory 
read -p "Are you in your home folder i.e. '~' (default: n, choose y/n)? " inHomeFolder
inHomeFolder=${inHomeFolder:-y} # default value is n

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
if [ "$inHomeFolder" = "n" ]; then
	copyAssets "Copying assets into relevant locations..."
fi

# Copies bashrc and tmux.conf files into home dir
copyCoreConfigFiles() {
	cp .bashrc ~/.bashrc
	cp .tmux.conf ~/.tmux.conf
}
decorate copyCoreConfigFiles
if [ "$inHomeFolder" = "n" ]; then
	copyCoreConfigFiles "Copying bashrc and tmux config files..." 
fi

copyScripts() {
	copyGit() {
		if [ ! -f /usr/bin/realgit ]; then
			sudo mv /usr/bin/git /usr/bin/realgit
		fi
		sudo cp ./scripts/git /usr/bin/git
		sudo chmod +x /usr/bin/git
	}
	decorate copyGit
	copyGit "Moving git to realgit... This will require sudo access"
}

decorate copyScripts
copyScripts "Copying necesary scripts and modifying bashrc..."

echo "Setup complete. Enjoy!"
