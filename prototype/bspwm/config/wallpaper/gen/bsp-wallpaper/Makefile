

default: help
.PHONY: default

help:
	@echo 'Usage:'
	@echo '	$$ make [action]'
	@echo
	@echo 'Example:'
	@echo '	$$ make'
	@echo '	$$ make help'
	@echo
	@echo '	$$ make prepare'
	@echo
	@echo '	$$ make rc'
	@echo
	@echo '	$$ make view'
	@echo
	@echo '	$$ make install'
	@echo
	@echo '	$$ make test'
	@echo
	@echo '	$$ make sync'
	@echo

.PHONY: help


prepare:
	sudo apt-get install php-cli
.PHONY: prepare


rc:
	php bsp-wallpaper.php > bsp-wallpaper
	chmod 755 bsp-wallpaper
.PHONY: rc


view:
	cat bsp-wallpaper
.PHONY: view


install: rc
	mkdir -p ~/bin
	install -m 755 bsp-wallpaper ~/bin/bsp-wallpaper
.PHONY: install


test: rc
	./run-on-xephyr.sh
	##xephyr-run-bspwm.sh
.PHONY: test


sync: rc
	mkdir -p ../../bin
	install -m 755 bsp-wallpaper ../../bin/bsp-wallpaper
##	sed -i 's/<bottom>48<\/bottom>/<bottom>5<\/bottom>/g' ../../bin/bsp-wallpaper
.PHONY: sync


test-install:
	xephyr-run-bspwm.sh
.PHONY: test-install


# demo:
# 	@./demo.sh
# .PHONY: demo
