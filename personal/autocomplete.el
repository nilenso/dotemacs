;;; autocomplete --- essential autocomplete settings
;;; Commentary:

;;; Code:

(prelude-ensure-module-deps '(yasnippet))

(yas-global-mode t)
(add-hook 'after-init-hook 'global-company-mode)

;;; autocomplete.el ends here
