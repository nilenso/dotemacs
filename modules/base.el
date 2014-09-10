(nel:require-packages 'anzu 'browse-kill-ring 'company-mode 'projectile 'undo-tree 'smex 'multiple-cursors 'yasnippets 'rainbow-delimiters 'expand-region 'neotree)

(nel:run-after-initializing
  (projectile-global-mode t)
  (global-rainbow-delimiters-mode t)
  (global-linum-mode t)
  (global-company-mode t)
  (global-undo-tree-mode t)
  (tool-bar-mode -1)
  (delete-selection-mode t)
  (fset 'yes-or-no-p 'y-or-n-p)
  (scroll-bar-mode -1)
  (yas-global-mode t))

(defun back-to-indentation-or-beginning () (interactive)
   (if (= (point) (progn (back-to-indentation) (point)))
       (beginning-of-line)))

(defun indent-buffer ()
  "Indent the currently visited buffer."
  (interactive)
  (indent-region (point-min) (point-max)))

(defun indent-region-or-buffer ()
  "Indent a region if selected, otherwise the whole buffer."
  (interactive)
  (save-excursion
    (if (region-active-p)
				(progn (indent-region (region-beginning) (region-end)))
      (progn (indent-buffer)))))

(defun move-line-up ()
  (interactive)
  (transpose-lines 1)
  (forward-line -2))

(defun move-line-down ()
  (interactive)
  (forward-line 1)
  (transpose-lines 1)
  (forward-line -1))

(nel:run-after-initializing
  (windmove-default-keybindings)
  (global-set-key (kbd "C-a") 'back-to-indentation-or-beginning)
  (global-set-key (kbd "C-=") 'er/expand-region)
  (global-set-key (kbd "s-t") 'projectile-find-file)
  (global-set-key (kbd "s-g") 'projectile-grep)
  (global-set-key (kbd "M-x") 'smex)
  (global-set-key (kbd "RET") 'newline-and-indent)
  (global-set-key (kbd "s-k") 'kill-whole-line)
  (global-set-key (kbd "M-S-<up>") 'move-line-up)
  (global-set-key (kbd "M-S-<down>") 'move-line-down)
  (global-set-key (kbd "C-c n") 'indent-region-or-buffer))
