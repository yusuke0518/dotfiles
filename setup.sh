#!/bin/zsh

DOT_FILES=(.vimrc .zshrc)

for file in ${DOT_FILES[@]}
do
	if [[ -a $HOME/$file ]]; then
		echo "$file already exists, cannot make symbolic link"
	else
		ln -s $HOME/dotfiles/$file $HOME/${file}
		echo "create ${file} symbolic link to $HOME/$file"
	fi
done
