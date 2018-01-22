# dotemacs #

**NOTE: This has been deprecated in favor of https://gitlab.com/nilenso/dotemacs**

The .emacs.d for everyone at nilenso.com. Installs emacs el-get as a base.

## installing ##

`make`

## personalizing ##

Any .el files you drop into modules/personal will be loaded on runtime.

The concept behind this repository is around modules
* A module represents some feature in it's entirety
* It can be a programming language, a theme or anything else

The enabled-modules file is a list of modules you want enabled

You can see sample-enabled-modules/gja-enabled-modules for an example

## standards ##

Here is where code should go within a file
* Packages that are required should go at the top of the file with (nel:require-package)
* If you need a specific version of the package, set it at the top of the file with (nel:customize-package 'cider :checkout "v0.6.0")
* Variables should be set with setq, and are not within any block (setq some-variable value)
* Code which should be run / modes to be enabled should be within a (nel:run-after-initializing)
* Wherever a mode is being set, try to enable it with an (add-hook) so it only enables on certain types of files.
