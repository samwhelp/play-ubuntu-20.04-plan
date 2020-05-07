#!/usr/bin/env bash


__main__ () {


	echo "mkdir -p $HOME/.config/cwm"
	mkdir -p "$HOME/.config/cwm"


	echo "install -m 755 ./cwmrc $HOME/.cwmrc"
	install -m 644 "./cwmrc" "$HOME/.cwmrc"


	##echo "install -m 644 ./sxhkdrc $HOME/.config/cwm/sxhkdrc"
	##install -m 644 "./sxhkdrc" "$HOME/.config/cwm/sxhkdrc"
	
}

__main__

