;;; autocomplete --- essential autocomplete settings
;;; Commentary:

;;; Code:

(prelude-ensure-module-deps '(auto-complete))
(prelude-ensure-module-deps '(yasnippet))

(require 'auto-complete)

(yas-global-mode t)
(global-auto-complete-mode t)

;;; autocomplete.el ends here
