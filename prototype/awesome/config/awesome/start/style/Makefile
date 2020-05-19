
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
	@echo '	$$ make sync'
	@echo

.PHONY: help


sync:
	make -C experiment/awesome-gen-rc sync
	make -C experiment_onepanel/awesome-gen-rc sync
	make -C experiment_onepanel_notitlebar/awesome-gen-rc sync
	make -C experiment_onlyfloat/awesome-gen-rc sync
	make -C experiment_onlyfloat_notitlebar/awesome-gen-rc sync
	make -C experiment_onlyfloat_notitlebar_nopanel/awesome-gen-rc sync
	make -C experiment_onlytile/awesome-gen-rc sync
	make -C experiment_onlytile_notitlebar/awesome-gen-rc sync
	make -C experiment_onlytile_notitlebar_nopanel/awesome-gen-rc sync
	make -C experiment_twopanel/awesome-gen-rc sync
	make -C experiment_twopanel_notitlebar/awesome-gen-rc sync

.PHONY: sync
