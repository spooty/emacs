;; -*- mode: emacs-lisp; coding: utf-8; indent-tabs-mode: nil -*-
;; ------------------------------------------------------------------------
;; @ auto-complete.el
;; https://github.com/magnars/expand-region.el
;; ------------------------------------------------------------------------

(require 'expand-region)

(global-set-key (kbd "\C-p") 'er/expand-region)
(global-set-key (kbd "\C-o") 'er/contract-region)

