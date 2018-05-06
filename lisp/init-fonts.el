;;; Changing font sizes

(require-package 'default-text-scale)
(add-hook 'after-init-hook 'default-text-scale-mode)


(defun sanityinc/maybe-adjust-visual-fill-column ()
  "Readjust visual fill column when the global font size is modified.
This is helpful for writeroom-mode, in particular."
  ;; TODO: submit as patch
  (if visual-fill-column-mode
      (add-hook 'after-setting-font-hook 'visual-fill-column--adjust-window nil t)
    (remove-hook 'after-setting-font-hook 'visual-fill-column--adjust-window t)))

(add-hook 'visual-fill-column-mode-hook
          'sanityinc/maybe-adjust-visual-fill-column)


;;; font setting


(let ((fontset "fontset-default"))
  (if (eq system-type 'darwin)
      (progn
        (set-face-attribute 'default nil :font fontset :height 140)
        (set-fontset-font fontset 'unicode (font-spec :family "Source Code Pro" :weight 'light :registry "unicode-bmp"))
        (set-fontset-font fontset 'unicode (font-spec :family "Symbola monospacified for DejaVu Sans Mono" :registry "unicode-bmp"))
        (set-fontset-font fontset 'latin
                          (font-spec :family "Source Code Pro" :weight 'light :registry "unicode-bmp"))
        (set-fontset-font fontset 'hangul
                          '("NanumGothicCoding" . "unicode-bmp")))
    (progn
      (set-face-attribute 'default nil :font fontset :height 125)
      (set-fontset-font fontset 'unicode (font-spec :family "Iosevka" :weight 'medium :registry "unicode-bmp"))
      (set-fontset-font fontset 'latin
                                        ;(font-spec :family "Source Code Pro" :registry "unicode-bmp"))
                        (font-spec :family "Iosevka" :weight 'medium :registry "unicode-bmp"))
      (set-face-attribute 'variable-pitch nil :family "Roboto")
      (set-fontset-font fontset 'hangul
                        '("NanumGothicCoding" . "unicode-bmp")))))

(provide 'init-fonts)
