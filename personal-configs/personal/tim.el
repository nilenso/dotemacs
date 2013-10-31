;; Formatting
(setq default-frame-alist '((font . "Consolas-12")))
(setq-default line-spacing 3)

;; Theme
(load-theme 'solarized-dark t)

;; OS X
;;(setq mac-command-modifier 'meta)
;;(setq mac-option-modifier 'super)

(require 'auto-complete)
(global-auto-complete-mode t)

;; Enable arrow keys
(setq prelude-guru nil)

;; Syntax highlighting for Gemfile
(add-to-list 'auto-mode-alist '("Gemfile\\'" . ruby-mode))

;; Indent all newlines
(define-key global-map (kbd "RET") 'newline-and-indent)
