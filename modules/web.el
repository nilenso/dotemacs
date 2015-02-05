(nel:require-packages 'web-mode 'scss-mode 'coffee-mode 'jsx-mode 'jshint-mode)

(setq coffee-tab-width 2)
(setq scss-compile-at-save nil)
(setq js-indent-level 2)

(add-hook 'js-mode-hook 'smartparens-strict-mode)
(add-hook 'js-mode-hook 'show-paren-mode)
(add-hook 'js-mode-hook 'sp-use-paredit-bindings)
