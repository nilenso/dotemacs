(prelude-ensure-module-deps '(emmet-mode))
(prelude-ensure-module-deps '(markdown-mode+))

(eval-after-load 'web-mode
  '(define-key web-mode-map [(tab)] 'emmet-expand-yas))
