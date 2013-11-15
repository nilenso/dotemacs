;;; aninda --- Aninda's custom stuff
;;; Commentary:

;;; Code:

(prelude-ensure-module-deps '(monokai-theme))
(load-theme 'monokai t)

(global-set-key (kbd "M-/") 'hippie-expand)
(global-set-key (kbd "M-;") 'comment-or-uncomment-line-or-region)

(set-face-attribute 'default nil
                    :family "Source Code Pro"
                    :height 130)

(provide 'aninda)

;;; aninda.el ends here
