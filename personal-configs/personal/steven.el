;;; steven --- Steven's custom stuff
;;; Commentary:

;;; Code:

(setq prelude-guru nil)

(prelude-ensure-module-deps '(solarized-theme))
(load-theme 'solarized-dark t)

(define-key global-map (kbd "RET") 'newline-and-indent)

(setq prelude-whitespace nil)

;; Force reset of path for OSX
(setenv "PATH" (shell-command-to-string "env -i HOME=$HOME bash -lc 'source ~/.bashrc && echo $PATH'"))

(auto-complete-mode)

(provide 'steven)

;;; steven.el ends here
