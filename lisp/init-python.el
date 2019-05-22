;;; init-python.el --- Python editing -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; (setq auto-mode-alist
;;       (append '(("SConstruct\\'" . python-mode)
;;                 ("SConscript\\'" . python-mode))
;;               auto-mode-alist))

;; (require-package 'pip-requirements)

;; (when (maybe-require-package 'anaconda-mode)
;;   (after-load 'python
;;     (add-hook 'python-mode-hook 'anaconda-mode)
;;     (add-hook 'python-mode-hook 'anaconda-eldoc-mode))
;;   (after-load 'anaconda-mode
;;     (define-key anaconda-mode-map (kbd "M-?") nil))
;;   (when (maybe-require-package 'company-anaconda)
;;     (after-load 'company
;;       (after-load 'python
;;         (push 'company-anaconda company-backends)))))

;; (use-package lsp-python-ms
;;  :ensure nil
;;  :demand t
;;  :hook (python-mode . lsp)
;;  :config

;;  ;; for dev build of language server
;;  (setq lsp-python-ms-dir
;;        (expand-file-name "~/git/python-language-server/output/bin/Release/"))
;;  ;; for executable of language server, if it's not symlinked on your PATH
;;  (setq lsp-python-ms-executable
;;        "~/git/python-language-server/output/bin/Release/linux-x64/publish/Microsoft.Python.LanguageServer"))

(require-package 'elpy)
(require-package 'flycheck)
(require-package 'pyenv-mode)
(require-package 'pyenv-mode-auto)

(pyenv-mode)
(elpy-enable)

(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

(provide 'init-python)
;;; init-python.el ends here
