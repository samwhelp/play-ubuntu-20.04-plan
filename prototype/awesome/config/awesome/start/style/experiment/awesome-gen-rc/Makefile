
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
	php rc.php > rc.lua
.PHONY: rc


view:
	cat rc.lua
.PHONY: view


install: rc
	mkdir -p ~/.config/awesome
	install -m 664 rc.lua ~/.config/awesome/rc.lua
.PHONY: install


test: rc
	./run-on-xephyr.sh
	##xephyr-run-awesome.sh
.PHONY: test


sync: rc
	install -m 664 rc.lua ../rc.lua
	##sed -i 's/<bottom>48<\/bottom>/<bottom>5<\/bottom>/g' ../rc.lua
.PHONY: sync


test-install:
	xephyr-run-awesome.sh
.PHONY: test-install


# demo:
# 	@./demo.sh
# .PHONY: demo
