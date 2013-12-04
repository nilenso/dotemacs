(prelude-ensure-module-deps '(emmet-mode))

(eval-after-load 'web-mode
  '(define-key web-mode-map [(tab)] 'emmet-expand-yas))
