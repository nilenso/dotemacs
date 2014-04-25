;;; gja --- Personal settings of Tejas Dinkar

;;; Commentary:
;;; Feel free to fork
;;; Code:
(prelude-ensure-module-deps '(adaptive-wrap htmlize))
(setq visual-line-fringe-indicators '(left-curly-arrow nil))
(setq whitespace-line-column 1000)

(add-hook 'text-mode-hook 'turn-on-visual-line-mode)
(global-hl-line-mode -1)

(add-hook 'ruby-mode-hook 'turn-on-visual-line-mode)

(add-hook 'LaTeX-mode-hook 'turn-off-auto-fill-mode)
(add-hook 'LaTeX-mode-hook 'turn-on-visual-line-mode)

(setq projectile-completion-system 'grizzl)
(add-hook 'text-mode-hook 'turn-off-guru-mode)

(provide 'gja)
;;; gja.el ends here
