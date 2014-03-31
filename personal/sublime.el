(prelude-ensure-module-deps '(multiple-cursors))

(defmacro move-back-horizontal-after (&rest code)
  `(let ((horizontal-position (current-column)))
     (progn
       ,@code
       (move-to-column horizontal-position))))

(defun comment-or-uncomment-line-or-region ()
  (interactive)
  (if (region-active-p)
    (comment-or-uncomment-region (region-beginning) (region-end))
    (move-back-horizontal-after
     (comment-or-uncomment-region (line-beginning-position) (line-end-position))
     (forward-line 1))))

(defun duplicate-line ()
  (interactive)
  (move-back-horizontal-after
   (move-beginning-of-line 1)
   (kill-line)
   (yank)
   (open-line 1)
   (forward-line 1)
   (yank)))

(defun expand-to-word-and-multiple-cursors (args)
  (interactive "p")
  (if (region-active-p) (mc/mark-next-like-this args) (er/mark-word)))

(global-set-key (kbd "s-t") 'projectile-find-file)
(global-set-key (kbd "M-s-<right>") 'switch-to-next-buffer)
(global-set-key (kbd "M-s-<left>") 'switch-to-prev-buffer)
(global-set-key (kbd "s-D") 'duplicate-line)
(global-set-key (kbd "s-/") 'comment-or-uncomment-line-or-region)
(global-set-key (kbd "s-d") 'expand-to-word-and-multiple-cursors)

(eval-after-load 'rspec-mode
  '(progn
     (define-key rspec-mode-map (kbd "s-R") 'rspec-verify-single)
     (define-key rspec-mode-map (kbd "s-T") 'rspec-verify)
     (define-key ruby-mode-map (kbd "s-E") 'rspec-rerun)
     (define-key ruby-mode-map (kbd "s-s-<down>") 'rspec-toggle-spec-and-target)
     (rspec-install-snippets)))

(global-linum-mode t)
