#/usr/bin/env bash


default_change () {
	local target="$1"
	
	echo "ln -sf \"$target\" default"
	ln -sf "$target" default 
}

default_change "$1"
