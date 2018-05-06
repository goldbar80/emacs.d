;; proxy Setting
(defun jk/setup-proxy ()
  "Ask if you want to use proxy or not."
  ;;(interactive)
  (progn
    ;; TODO: retrieve shell information (?)
    (setenv "http_proxy" "http://www-proxy-hqdc.us.oracle.com:80")
    (setenv "https_proxy" "http://www-proxy-hqdc.us.oracle.com:80")
    (setq url-proxy-services
          '(("no_proxy" . "^\\(localhost\\|10.*\\|*.us.oracle.com\\|*.oracle.com\\)")
            ("http" . "www-proxy.us.oracle.com:80")
            ("https" . "www-proxy.us.oracle.com:80"))))
  )

(jk/setup-proxy)

(provide 'init-proxy)
