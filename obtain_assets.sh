
if [ ! -d assets ]; then
    echo "Creating assets folder..."
    mkdir assets
else
    echo "assets/ folder already exists, skipping creation..."
fi

if [ ! -f assets/git-prompt.sh ]; then
    echo "Obtaining git-prompt.sh script..."
    cd assets/ && wget https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
else
    echo "git-prompt.sh script exists, skipping download..."
fi
