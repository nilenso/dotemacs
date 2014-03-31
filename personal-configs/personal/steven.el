;;; steven --- Steven's custom stuff
;;; Commentary:

;;; Code:

(set-face-attribute 'default nil
                    :family "Source Code Pro"
                    :height 160)

(global-set-key (kbd "M-/") 'hippie-expand)

(setq ring-bell-function #'ignore)

(provide 'steven)

;;; steven.el ends here
