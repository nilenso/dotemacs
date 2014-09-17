(nel:require-packages 'sanityinc-solarized)

(nel:run-after-initializing
  (add-to-list 'custom-theme-load-path "~/.emacs.d/el-get/sanityinc-solarized")
  (load-theme 'sanityinc-solarized-dark t))
