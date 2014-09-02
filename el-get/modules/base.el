(nel:require-packages 'anzu 'browse-kill-ring 'company-mode 'projectile 'undo-tree 'smex 'multiple-cursors 'yasnippets 'rainbow-delimiters 'expand-region)

(nel:run-after-initializing
  (projectile-global-mode)
  (global-rainbow-delimiters-mode)
  (global-linum-mode t)
  (global-company-mode)
  (tool-bar-mode -1)
  (delete-selection-mode)
  (yas-global-mode))

(nel:run-after-initializing
  (windmove-default-keybindings)
  (global-set-key (kbd "C-=") 'er/expand-region)
  (global-set-key (kbd "s-t") 'projectile-find-file)
  (global-set-key (kbd "s-g") 'projectile-grep)
  (global-set-key (kbd "M-x") 'smex)
  (global-set-key (kbd "RET") 'newline-and-indent))
