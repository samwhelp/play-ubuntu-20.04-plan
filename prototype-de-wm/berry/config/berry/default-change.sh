#/usr/bin/env bash


default_change () {
	local target="$1"
	
	
	echo "rm -f default"
	rm -f default
	
	echo "ln -sf \"$target\" default"
	ln -sf "$target" default 
}

default_change "$1"
