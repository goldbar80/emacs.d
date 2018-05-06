(require-package 'all-the-icons)
(require 'all-the-icons)

(add-to-list 'all-the-icons-icon-alist '("\\.sc$" all-the-icons-alltheicon "scala" :face all-the-icons-red))
(add-to-list 'all-the-icons-icon-alist '("\\.sbt$" all-the-icons-fileicon "sbt" :face all-the-icons-blue))
(add-to-list 'all-the-icons-mode-icon-alist '(sbt-mode  all-the-icons-fileicon "sbt" :v-adjust -0.1))
(add-to-list 'all-the-icons-mode-icon-alist '(mu4e-headers-mode all-the-icons-octicon "mail-read"))
(add-to-list 'all-the-icons-mode-icon-alist '(mu4e-view-mode all-the-icons-octicon "mail-read"))

(provide 'init-all-the-icons)
