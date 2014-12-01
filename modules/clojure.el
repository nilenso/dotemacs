(nel:require-packages 'cider 'clj-refactor 'align-cljlet 'smartparens)

(setq cider-repl-history-file "~/.emacs.d/nrepl-history")
(setq cider-auto-select-error-buffer t)
(setq cider-repl-popup-stacktraces t)

(defun custom-cider-shortcuts ()
  (local-set-key (kbd "C-c ,") 'cider-test-run-tests)
  (local-set-key (kbd "C-c ,") 'cider-test-run-tests))

(nel:run-after-initializing
  (add-hook 'clojure-mode-hook 'smartparens-strict-mode)
  (add-hook 'clojure-mode-hook 'clj-refactor-mode)
  (add-hook 'clojure-mode-hook 'show-paren-mode)
  (add-hook 'clojure-mode-hook 'sp-use-paredit-bindings)
  (add-hook 'clojure-mode-hook (lambda () (cljr-add-keybindings-with-prefix "C-c C-m")))
  (add-hook 'clojure-mode-hook 'custom-cider-shortcuts)

  (add-hook 'cider-repl-mode-hook 'smartparens-strict-mode)
  (add-hook 'cider-repl-mode-hook 'show-paren-mode)
  (add-hook 'cider-repl-mode-hook 'sp-use-paredit-bindings)


  (defadvice cider-test-run-tests (before save-first activate)
    (save-buffer))

  (defadvice cider-load-current-buffer (before save-first activate)
    (save-buffer)))
