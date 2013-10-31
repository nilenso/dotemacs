;;; gja --- Personal settings of Tejas Dinkar

;;; Commentary:
;;; Feel free to fork
;;; Code:
(defun fix-ruby-mode ()
  "Fix to not wrap, or give stupid warnings after 80 chars."
  (progn
    (turn-off-show-smartparens-mode)
    (visual-line-mode t)))

(prelude-ensure-module-deps '(adaptive-wrap))
(setq visual-line-fringe-indicators '(left-curly-arrow nil))
(setq whitespace-line-column 1000)

(add-hook 'ruby-mode-hook 'fix-ruby-mode)

(add-hook 'LaTeX-mode-hook 'turn-off-auto-fill-mode)
(add-hook 'LaTeX-mode-hook 'turn-on-visual-line-mode)

(prelude-ensure-module-deps '(solarized-theme))
(load-theme 'solarized-dark t)

(define-key global-map (kbd "RET") 'newline-and-indent)

;; Force reset of path for OSX
(setenv "PATH" (shell-command-to-string "env -i HOME=$HOME bash -lc 'source ~/.bashrc && echo $PATH'"))

(auto-complete-mode)
(provide 'gja)
;;; gja.el ends here
