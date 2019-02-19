(require-package 'eterm-256color)

(add-hook 'term-mode-hook #'eterm-256color-mode)

(provide 'init-eterm)
