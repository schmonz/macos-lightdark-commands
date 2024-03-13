default: none

none:

.PHONY: install install-watcher install-script
install: install-watcher install-script

install-watcher:
	mkdir -p $${HOME}/Library/LaunchAgents
	for i in com.schmonz.lightdark.plist; do \
		cp `pwd`/etc/$${i} $${HOME}/Library/LaunchAgents/; \
	done

install-script:
	mkdir -p $${HOME}/bin
	for i in lightdark-script; do \
		ln -sf `pwd`/bin/$${i} $${HOME}/bin/; \
	done
