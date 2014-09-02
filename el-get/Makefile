all: ~/.emacs

~/.emacs: prelude.el epilogue.el modules enabled-modules ~/.emacs.d/custom.el
	./install.sh $@

~/.emacs.d:
	mkdir -p $@

~/.emacs.d/custom.el: ~/.emacs.d
	touch $@

enabled-modules:
	# Using the default enabled modules. See sample-enabled-modules for samples
