(prelude-ensure-module-deps '(zencoding-mode))

(eval-after-load 'web-mode
  '(define-key web-mode-map [(tab)] 'zencoding-expand-yas))
