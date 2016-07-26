(nel:require-packages 'anzu 'browse-kill-ring 'company-mode 'projectile 'undo-tree 'smex 'multiple-cursors 'yasnippets 'rainbow-delimiters 'expand-region 'neotree)

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

(defun kill-other-buffers ()
  "Kill all other buffers."
  (interactive)
  (mapc 'kill-buffer
        (delq (current-buffer)
              (remove-if-not 'buffer-file-name (buffer-list)))))

(setq ido-enable-flex-matching t)
(setq ido-everywhere t)

(nel:run-after-initializing
 (projectile-global-mode t)
 (add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
 (global-linum-mode t)
 (global-company-mode t)
 (global-undo-tree-mode t)
 (tool-bar-mode -1)
 (ido-mode 1)
 (delete-selection-mode t)
 (fset 'yes-or-no-p 'y-or-n-p)
 (scroll-bar-mode -1)
 (yas-global-mode t)
 (add-hook 'before-save-hook 'delete-trailing-whitespace))

(nel:run-after-initializing
 (windmove-default-keybindings)
 (global-set-key (kbd "C-a") 'back-to-indentation-or-beginning)
 (global-set-key (kbd "C-=") 'er/expand-region)
 (global-set-key (kbd "s-t") 'projectile-find-file)
 (global-set-key (kbd "s-g") 'projectile-grep)
 (global-set-key (kbd "M-x") 'smex)
 (global-set-key (kbd "RET") 'newline-and-indent)
 (global-set-key (kbd "s-p") 'projectile-switch-project)
 (global-set-key (kbd "M-S-<up>") 'move-line-up)
 (global-set-key (kbd "M-S-<down>") 'move-line-down)
 (global-set-key (kbd "C-c n") 'indent-region-or-buffer))

;; Show full file path in the title bar
(setq
 frame-title-format
 '((:eval (if (buffer-file-name)
	      (abbreviate-file-name (buffer-file-name))
	    "%b"))))

;; Scroll one line at a time
(setq scroll-conservatively 10)

(global-hl-line-mode)

;; Disables audio bell
(setq ring-bell-function
      (lambda () (message "*beep*")))
