;;; configs.el ---- Summary: Some additional Emacs configurations
;;
;; Filename: modes.el
;; Description: Some additional Emacs configurations
;; Author: Anas (0x0584)
;; Created: Nov 20, 2018
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Commentary:
;;
;;	 Some additional Emacs configurations
;;
;;; Summary:
;;
;;	 Describe loaded files.
;;	 Describe loaded modes.
;;	 Describe load time.
;;
;;; User options defined here:
;;
;;; Commands defined here:
;;
;;; Interactive functions defined here:
;;
;;; Non-interactive functions defined here:
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth
;; Floor, Boston, MA 02110-1301, USA.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Code:

(require 'warnings)
(require 'time-stamp)
(require 'use-ttf)

(defvar SHELL-ZSH "/bin/zsh" "The path ro Zsh shell.")
(defvar SHELL-BASH "/bin/bash" "The path ro Bash shell.")

(setenv "SHELL" (expand-file-name SHELL-ZSH))

;; Personal Information
(setq user-full-name "Anas Rchid"
	  user-mail-address "rchid.anas@gmail.com")

;; Set standard indent to 4 rather that 8
(setq standard-indent 4)

(setq custom-file "~/.emacs.d/custom.el")

;; Using text-mode as the default mode for new buffers
;; (setq major-mode 'text-mode)
(setq dired-listing-switches "-aBhl -F")

(setq warning-minimum-level :emergency)

;; Set backup configuration
(setq backup-by-copying t				; don't clobber symlinks
	  backup-directory-alist
	  '(("." . "~/.autosaves"))			; don't litter my fs tree
	  delete-old-versions t
	  kept-new-versions 6
	  kept-old-versions 2
	  version-control t)				; use versioned backups

;; Create the autosave dir if necessary, since emacs won't.
(make-directory "~/.emacs.d/autosaves/" t)

;; Use lexical binding when evaluating Lisp
(setq lexical-binding t)

(setq time-stamp-pattern
	  "8/Updated:[ \t]+\\\\?[\"<]+%:y-%02m-%02d %3a %02H:%02M:%02S\\\\?[\">]")

(setq visible-bell t)					; Better that a sound, right?

(setq debug-on-error t)

(setq tab-width 4)
(setq tab-stop-list (generate-tab-stops))
(setq indent-tabs-mode nil)

;; (setq use-ttf-default-ttf-fonts
;;	  '("/.emacs.d/fonts/Inconsolata-Regular.ttf"
;;		"/.emacs.d/fonts/DejaVuSansMono.ttf"))
;; (setq use-ttf-default-ttf-font-name "DejaVu")

; (call-interactively #'use-ttf-install-fonts)
; (call-interactively #'use-ttf-set-default-font)

(defalias 'wind-below 'split-current-window-below)
(defalias 'wind-above 'split-current-window-above)
(defalias 'wind-right 'split-current-window-right)
(defalias 'wind-left 'split-current-window-left)
(defalias 'window-split-toggle 'wind-tog)

(defalias 'qrr 'query-replace-regexp)

;; (add-hook 'buffer-list-update-hook
;;	  (lambda ()
;;		(cond
;;		 ((and (eq major-mode 'c-mode)
;;		   (not (memq 'light-blue custom-enabled-themes)))
;;		  (disable-theme 'tango)
;;		  (enable-theme 'light-blue))
;;		 ((and (eq major-mode 'perl-mode)
;;		   (not (memq 'tango custom-enabled-themes)))
;;		  (disable-theme 'light-blue)
;;		  (enable-theme 'tango)))))

;;; configs.el ends here
