# Instructions to install vs code extensions
To install all vs code extensions, run the following command in the dotfiles directory (vs code must be installed
```sh
cat vscode/extensions.txt | xargs -n 1 code --install-extension
```
