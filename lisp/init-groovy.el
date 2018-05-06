(require-package 'groovy-mode)

;; add .gradle
(add-to-list 'auto-mode-alist '("\\.gradle\\'" . groovy-mode))

(provide 'init-groovy)
