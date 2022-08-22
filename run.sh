echo "Obtaining necessary assets..."
bash obtain_assets.sh
echo "Done."

echo "Copying assets into relevant locations..."
cp assets/git-prompt.sh ~/.git-prompt.sh
echo "Done."

echo "Copying bashrc and tmux config files..."
cp .bashrc ~/.bashrc
cp .tmux.conf ~/.tmux.conf
echo "Done."

echo "Setup complete."
