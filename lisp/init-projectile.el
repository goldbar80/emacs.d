(when (maybe-require-package 'projectile)
  (add-hook 'after-init-hook 'projectile-mode)

  (after-load 'projectile
    (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map))

  ;; The following code means you get a menu if you hit "C-c p" and wait
  (after-load 'guide-key
    (add-to-list 'guide-key/guide-key-sequence "C-c p"))

  ;; Shorter modeline
  (after-load 'projectile
    (setq-default
     projectile-mode-line
     '(:eval
       (if (file-remote-p default-directory)
           " Proj"
         (format " Proj[%s]" (projectile-project-name)))))))

(provide 'init-projectile)
