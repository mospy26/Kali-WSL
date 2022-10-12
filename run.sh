# Run this script to setup your WSL environment

# obtain OS details
source scripts/os.sh

# Check if current director is home directory 
if [ $(pwd) = $HOME ]; then
    inHomeFolder=y;
else
    inHomeFolder=n;
fi

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
	cp .hushlogin ~/.hushlogin
	cp .profile ~/.profile
	cp .bashrc ~/.bashrc
	cp .tmux.conf ~/.tmux.conf
	cp .inputrc ~/.inputrc
	mkdir -p ~/.config && cp -r .config/nvim ~/.config
	cp -r .config/ranger ~/.config
}
decorate copyCoreConfigFiles
if [ "$inHomeFolder" = "n" ]; then
	copyCoreConfigFiles "Copying bashrc and tmux config files..." 
fi

# Move git for WSL - only needed in Windows WSL
copyScripts() {
	copyGit() {
		if [ ! -f /usr/bin/realgit ]; then
			sudo mv /usr/bin/git /usr/bin/realgit
		fi
		sudo cp ./scripts/git /usr/bin/git
		sudo chmod +x /usr/bin/git
	}
	if [[ $machine = Windows ]]; then
		decorate copyGit
		copyGit "Moving git to realgit... This will require sudo access"
	fi

	mkdir -p ~/scripts/ && cp -r scripts/ ~/scripts
}

decorate copyScripts
copyScripts "Copying necesary scripts..."

echo "Setup complete. Enjoy!"
