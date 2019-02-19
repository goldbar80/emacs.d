(require-package 'groovy-mode)

;; add .gradle
(add-to-list 'auto-mode-alist '("\\.gradle\\'" . groovy-mode))
(setq groovy-indent-offset 2)

(provide 'init-groovy)
