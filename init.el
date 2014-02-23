;; -*- mode: emacs-lisp; coding: utf-8; indent-tabs-mode: nil -*-

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;; Common Lisp extensions for Emacs(use it anyway).
(require 'cl)

;; load inits
(require 'init-loader)
(setq init-loader-show-log-after-init nil)
(init-loader-load "~/.emacs.d/inits")

;; (require 'w3m-load)

(put 'dired-find-alternate-file 'disabled nil)

