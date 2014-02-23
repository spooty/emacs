;; -*- mode: emacs-lisp; coding: utf-8; indent-tabs-mode: nil -*-
;; ------------------------------------------------------------------------
;; @ helm.el
;; http://www.emacswiki.org/emacs/Anything
;; ------------------------------------------------------------------------

(require 'helm)
(require 'helm-config)
;; (require 'helm-helm-command)

;; show window on right panel
;; (setq helm-split-window-default-side 'right)

;; display full path
(setq helm-ff-transformer-show-only-basename nil)

(global-set-key "\C-l" 'helm-custom)
(global-set-key "\C-x\C-f" 'helm-find-files)
(global-set-key "\C-xi" 'helm-imenu)
(global-set-key "\C-x\C-o" 'helm-occur)
(global-set-key "\C-c\C-s" 'helm-occur-from-isearch)
(global-set-key "\C-xf" 'find-file)

(defun helm-custom()
  (interactive)
  (require 'helm-files)
  (helm-other-buffer '(helm-source-files-in-current-dir
                       helm-source-buffers-list
                       helm-source-recentf
                       helm-source-buffer-not-found
                       )
                     "*helm-custom*"))

;; (require 'popwin)
;; (setq display-buffer-function 'popwin:display-buffer)
;; (push '("^\*helm .+\*$" :regexp t) popwin:special-display-config)

;; (require 'popwin)
;; (popwin-mode 1)
;; (setq helm-samewindow nil)
;; (setq display-buffer-function 'popwin:display-buffer)
;; (setq popwin:special-display-config '(("*compilatoin*" :noselect t)
;;                                       ("^\\*helm .+\*$" :regexp t :height 0.4)
;;                                       ))
