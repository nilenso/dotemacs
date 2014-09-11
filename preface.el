(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
    (url-retrieve-synchronously
      "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "PWD/recipes")

(setq nel:my-packages '())
(defvar nel-initialized-hook nil)

(defun nel:require-packages (&rest packages)
  (setq nel:my-packages 
    (append nel:my-packages packages)))

(defmacro nel:run-after-initializing (&rest body) 
  `(add-hook 'nel-initialized-hook
     (lambda ()
       ,@body)))

;; end of preface
