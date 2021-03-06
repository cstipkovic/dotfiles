#!/usr/bin/env bash
# The dotfile initial

os_name=$(uname -s)

# Linux
_linux_os() {
	ln -s ~/.dotfiles/bashrc ~/.bashrc
	ln -s ~/.dotfiles/vim/vimrc ~/.vimrc
}

# Mac OS X Darwin
_darwin_os() {
	ln -s ~/.dotfiles/bashrc ~/.bashrc
	ln -s ~/.dotfiles/vim/vimrc ~/.vimrc
	ln -s ~/.dotfiles/bash_profile ~/.bash_profile
	ln -s ~/.dotfiles/.git-completion.bash ~/.git-completion.bash
}

if [ $os_name = "Darwin" ] 
then
	_darwin_os
else
	_linux_os
fi

echo "Getting Vim-Plug"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Common functions
_dotfile() {
	echo "dotfiles"
}

