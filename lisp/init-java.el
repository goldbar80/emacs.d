;; indentation
(add-hook 'java-mode-hook (lambda ()
                            (setq c-basic-offset 2
                                  tab-width 2
                                  indent-tab-mode t)))

(provide 'init-java)
