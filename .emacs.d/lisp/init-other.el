;;; init-other.el ---- Summary: Other configurations
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Commentary:
;;
;;   Other mode configurations
;;
;;; Summary:
;;
;;    Showing less minor mods, activating smex and god mode
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Code:

(require 'rich-minority)
(require 'smex)			    ; Not needed if you use package.el
(require 'fzf)
(require 'bm)
(require 'god-mode)
(require 'recentf)
(require 'magit-todos)
(require 'god-mode-isearch)

(setf rm-blacklist "")

(defun god-toggle-on-overwrite ()
  "Toggle `god-mode` on `overwrite-mode`."
  (if (bound-and-true-p overwrite-mode)
      (god-local-mode-pause)
    (god-local-mode-resume)))

(recentf-mode 1)
(savehist-mode 1)
(magit-todos-mode)
(rich-minority-mode 1)
(smex-initialize) ; when Smex is auto-initialized on its first run.

(define-key isearch-mode-map (kbd "<escape>") 'god-mode-isearch-activate)
(define-key god-mode-isearch-map (kbd "<escape>") 'god-mode-isearch-disable)
(global-set-key (kbd "<escape>") 'god-local-mode)
(define-key god-local-mode-map (kbd ".") 'repeat)
(define-key god-local-mode-map (kbd "i") 'god-local-mode)

(add-to-list 'god-exempt-major-modes 'dired-mode)
(add-hook 'overwrite-mode-hook 'god-toggle-on-overwrite)

(provide 'init-other)
;;; init-other.el ends here