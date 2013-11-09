;;; style --- visual stuff (color, font)
;;; Commentary:

;;; Code:

(prelude-ensure-module-deps '(monokai-theme))
(load-theme 'monokai t)

(set-face-attribute 'default nil
                    :family "Source Code Pro"
                    :height 160)

(provide 'style)

;;; style.el ends here
