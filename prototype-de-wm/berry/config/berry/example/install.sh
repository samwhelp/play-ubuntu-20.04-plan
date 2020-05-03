#!/usr/bin/env bash


__main__ () {


	echo "mkdir -p $HOME/.config/berry"
	mkdir -p "$HOME/.config/berry"


	echo "install -m 755 ./berryrc $HOME/.config/berry/berryrc"
	install -m 755 "./berryrc" "$HOME/.config/berry/berryrc"


	echo "install -m 644 ./sxhkdrc $HOME/.config/berry/sxhkdrc"
	install -m 644 "./sxhkdrc" "$HOME/.config/berry/sxhkdrc"
	
}

__main__

