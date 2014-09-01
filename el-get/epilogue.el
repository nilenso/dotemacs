;; start of epilogue

(el-get 'sync nel:my-packages)
(run-hooks 'nel-initialized-hook)

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)
