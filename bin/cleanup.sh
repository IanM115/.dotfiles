#!/bin/bash
rm -f ~/.vimrc
sed -i 's/source ~\/.dotfiles\/etc\/bashrc_custom//' ~/.bashrc
rm -rf ~/.TRASH
