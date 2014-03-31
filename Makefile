copy-settings: ~/.emacs.d update-submodules
	tar c modules personal snippets prelude-modules.el | tar xC $<
	find personal-configs -name $$USER.el | sed 's,personal-configs/,,' | xargs tar cC personal-configs .gitkeep | tar xC $<
	touch custom-el/$$USER.el
	ln -sf $$PWD/custom-el/$$USER.el $</personal/custom.el

~/.emacs.d:
	test -d $@ || (curl -L http://git.io/epre | sh)

update-submodules:
	git submodule init
	git submodule update
