;;; gja --- Personal settings of Tejas Dinkar

;;; Commentary:
;;; Feel free to fork
;;; Code:
(prelude-ensure-module-deps '(adaptive-wrap))
(setq visual-line-fringe-indicators '(left-curly-arrow nil))
(setq whitespace-line-column 1000)

(add-hook 'text-mode-hook 'turn-on-visual-line-mode)

(add-hook 'ruby-mode-hook 'turn-on-visual-line-mode)

(add-hook 'LaTeX-mode-hook 'turn-off-auto-fill-mode)
(add-hook 'LaTeX-mode-hook 'turn-on-visual-line-mode)

(prelude-ensure-module-deps '(solarized-theme))
(load-theme 'solarized-dark t)

(provide 'gja)
;;; gja.el ends here
