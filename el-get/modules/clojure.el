(nel:require-packages 'cider 'clj-refactor 'align-cljlet 'smartparens)

(nel:run-after-initializing
  (add-hook 'clojure-mode-hook 'smartparens-strict-mode)
  (add-hook 'clojure-mode-hook 'clj-refactor-mode)
  (add-hook 'clojure-mode-hook 'show-paren-mode)
  (add-hook 'clojure-mode-hook 'sp-use-paredit-bindings))
