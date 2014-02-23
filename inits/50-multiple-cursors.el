;; -*- mode: emacs-lisp; coding: utf-8; indent-tabs-mode: nil -*-
;; ------------------------------------------------------------------------
;; @ multiple-cursors.el
;; https://github.com/magnars/multiple-cursors.el
;; ------------------------------------------------------------------------

(require 'multiple-cursors)

(global-set-key (kbd "\C-^") 'mc/edit-lines)
;; (smartrep-define-key
;;  global-map "\C-^" '(("C-n" . 'mc/mark-next-like-this)
;;                     ("C-p" . 'mc/mark-previous-like-this)
;;                     ("*"   . 'mc/mark-all-like-this)))

