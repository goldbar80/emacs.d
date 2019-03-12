;; remove window decoration
(set-frame-parameter nil 'undecorated t)
;; add internal border
(set-frame-parameter nil 'internal-border-width 25)

(require-package 'doom-modeline)
(use-package doom-modeline
      :ensure t
      :hook (after-init . doom-modeline-mode))


(provide 'init-theme)
