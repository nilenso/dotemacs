;;; osx --- Fix things on macintosh
;;; Commentary:

;;; Code:

(setq mac-command-modifier 'meta)
(setq mac-option-modifier 'super)

;; Force reset of path for OSX
(setenv "PATH" (shell-command-to-string "env -i HOME=$HOME bash -lc 'source ~/.bashrc && echo $PATH'"))

;;; osx.el ends here
