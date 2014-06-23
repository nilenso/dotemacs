(prelude-ensure-module-deps '(clj-refactor company-cider))

(eval-after-load 'company '(add-to-list 'company-backends 'company-cider))

(add-hook 'clojure-mode-hook (lambda ()
                               (clj-refactor-mode 1)
                               (cljr-add-keybindings-with-prefix "C-c C-m")
                               (cljr-add-keybindings-with-prefix "C-c C-x")))


(prelude-ensure-module-deps '(cider))
(setq cider-repl-wrap-history t)
(setq cider-repl-history-size 1000)
(setq cider-repl-history-file "~/.nrepl-history")

(provide 'clojure)
