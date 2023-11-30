#!/bin/bash

if [ ! -d "$HOME/.oh-my-zsh" ]; then
	echo "Getting ohmyz.sh"
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended --keep-zshrc --skip-chsh
else
	echo ".oh-my-zsh already found, skipping."
fi
