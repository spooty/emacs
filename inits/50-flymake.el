;; -*- mode: emacs-lisp; coding: utf-8; indent-tabs-mode: nil -*-
;; ------------------------------------------------------------------------
;; @ flymake.el
;; http://www.emacswiki.org/emacs/FlyMake
;; ------------------------------------------------------------------------

(require 'flymake)

;; https://github.com/purcell/flymake-ruby
(require 'flymake-ruby)
(add-hook 'ruby-mode-hook 'flymake-ruby-load)
