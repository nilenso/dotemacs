(nel:require-packages 'stable-cider 'clj-refactor 'align-cljlet 'smartparens 'fill-column-indicator)

(setq cider-repl-history-file "~/.emacs.d/nrepl-history")
(setq cider-auto-select-error-buffer t)
(setq cider-repl-popup-stacktraces t)

(defcustom clojure-column-line nil
  "When non nil, puts a line at some character on clojure mode"
  :type 'integer
  :group 'clojure)

(defun custom-cider-shortcuts ()
  (local-set-key (kbd "C-c ,") 'cider-test-run-tests)
  (local-set-key (kbd "C-c ,") 'cider-test-run-tests))

(defun custom-turn-on-fci-mode ()
  (when clojure-column-line
    (setq fci-rule-column clojure-column-line)
    (turn-on-fci-mode)))

(defmacro clojure:save-before-running (function)
  `(defadvice ,function (before save-first activate)
     (save-buffer)))

(defmacro clojure:load-before-running (function)
  `(defadvice ,function (before save-first activate)
     (cider-load-buffer)))

(nel:run-after-initializing
  (add-hook 'clojure-mode-hook 'smartparens-strict-mode)
  (add-hook 'clojure-mode-hook 'clj-refactor-mode)
  (add-hook 'clojure-mode-hook 'show-paren-mode)
  (add-hook 'clojure-mode-hook 'sp-use-paredit-bindings)
  (add-hook 'clojure-mode-hook (lambda () (cljr-add-keybindings-with-prefix "C-c C-m")))
  (add-hook 'clojure-mode-hook 'custom-cider-shortcuts)
  (add-hook 'clojure-mode-hook 'custom-turn-on-fci-mode)

  (add-hook 'cider-repl-mode-hook 'smartparens-strict-mode)
  (add-hook 'cider-repl-mode-hook 'show-paren-mode)
  (add-hook 'cider-repl-mode-hook 'sp-use-paredit-bindings)

  (clojure:save-before-running cider-load-current-buffer)
  (clojure:load-before-running cider-test-run-tests)
  (clojure:load-before-running cider-test-rerun-tests)
  (clojure:load-before-running cider-test-run-test))
