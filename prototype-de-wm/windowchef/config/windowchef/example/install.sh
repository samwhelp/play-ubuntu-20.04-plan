#!/usr/bin/env bash


__main__ () {


	echo "mkdir -p $HOME/.config/windowchef"
	mkdir -p "$HOME/.config/windowchef"


	echo "install -m 755 ./windowchefrc $HOME/.config/windowchef/windowchefrc"
	install -m 755 "./windowchefrc" "$HOME/.config/windowchef/windowchefrc"


	echo "install -m 644 ./sxhkdrc $HOME/.config/windowchef/sxhkdrc"
	install -m 644 "./sxhkdrc" "$HOME/.config/windowchef/sxhkdrc"
	
}

__main__

