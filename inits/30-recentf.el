;; -*- mode: emacs-lisp; coding: utf-8; indent-tabs-mode: nil -*-
;; ------------------------------------------------------------------------
;; @ recentf.el
;; http://www.emacswiki.org/emacs/RecentFiles
;; ------------------------------------------------------------------------


(when (require 'recentf nil t)
  (setq recentf-max-saved-items 2000)
  (setq recentf-exclude '(".recentf"))
  (setq recentf-auto-cleanup 10)
  (setq recentf-auto-save-timer
        (run-with-idle-timer 30 t 'recentf-save-list))
  (recentf-mode 1)
  (require 'recentf-ext))
