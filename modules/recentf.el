(defun grizzl-recentf ()
  (interactive)
  (let ((file (grizzl-completing-read "Recent: " (grizzl-make-index (reverse recentf-list)))))
    (when file
      (find-file file))))

(setq recentf-max-saved-items 500)
(setq recentf-max-menu-items 15)
(setq recentf-auto-cleanup 'never)

(nel:run-after-initializing
  (recentf-mode +1)  
  (run-with-timer 0 60 'recentf-save-list)
  (global-set-key (kbd "C-c f") 'grizzl-recentf))
