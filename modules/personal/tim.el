(nel:require-packages 'guru-mode 'nyan-mode 'helm)

(nel:run-after-initializing
  ;; Fonts and Formatting
  (setq default-frame-alist '((font . "Source Code Pro-12")))
  (setq-default line-spacing 3)

  ;; Add company mode (autocomplete) everywhere.
  (add-hook 'after-init-hook 'global-company-mode)
  (eval-after-load 'company '(add-to-list 'company-backends 'company-cider))

  ;; CIDER config
  (setq cider-show-error-buffer nil)

  ;; Indent all newlines
  (define-key global-map (kbd "RET") 'newline-and-indent)

  ;; Disable the splash screen
  (setq inhibit-splash-screen t)

  (add-hook 'after-init-hook 'nyan-mode)
  (add-hook 'after-init-hook 'prettify-symbols-mode)

  (guru-global-mode +1)

  ;; Custom Keybindings

  (defun disable-keybinding ()
    "Just display a message instead of invoking this keybinding."
    (interactive)
    (message "Sorry, can't do this!"))

  (global-set-key (kbd "M-C-w") 'sp-copy-sexp)
  (global-set-key (kbd "s-k") 'kill-whole-line)
  (global-set-key [f8] 'neotree-toggle)
  (global-set-key (kbd "M-q") 'cider-quit)
  (global-set-key (kbd "s-t") 'helm-projectile)
  (global-set-key (kbd "C-x b") 'helm-buffers-list)
  (global-set-key (kbd "M-x") 'helm-M-x)
  (global-set-key (kbd "C-c f") 'helm-recentf)
  (global-set-key (kbd "C-x C-f") 'helm-find-files)
  (global-set-key (kbd "C-x C-z") 'disable-keybinding))
