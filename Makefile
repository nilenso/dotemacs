all: ~/.emacs ~/.emacs.d ~/.emacs.d/custom.el

~/.emacs: prelude.el epilogue.el modules enabled-modules
	./install.sh $@

~/.emacs.d:
	mkdir -p $@

~/.emacs.d/custom.el: 
	touch $@

enabled-modules:
	if [ ! -f enabled-modules ]; then cp sample-enabled-modules/default enabled-modules; fi
