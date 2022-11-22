#!/bin/bash
if [ "$(uname)" != "Linux" ]
then
	echo "uname not Linux" >> linuxsetup.log
	exit
fi
mkdir -p ~/.TRASH
if [ -d "~/.vimrc" ]
then
    mv .vimrc .bup_vimrc
    echo ".vimrc file changed to .bup_vimrc" >> linuxsetup.log
fi
cat ~/.dotfiles/etc/vimrc > ~/.vimrc
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc

