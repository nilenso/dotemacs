(nel:require-packages 'magit)

(nel:run-after-initializing
 (global-set-key (kbd "C-c g") 'magit-status))
