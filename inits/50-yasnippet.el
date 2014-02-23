;; -*- mode: emacs-lisp; coding: utf-8; indent-tabs-mode: nil -*-
;; ------------------------------------------------------------------------
;; @ yasnippet.el
;; http://www.emacswiki.org/emacs/Yasnippet
;; ------------------------------------------------------------------------

;; (require 'yasnippet)
(require 'yasnippet-bundle)

;; (setq yas-snippet-dirs
;;       '(;; "~/.emacs.d/snippets/"
;;         ;; "~/.emacs.d/elpa/yasnippet-20140106.1009/snippets"
;;         ))

(yas-global-mode 1)
(custom-set-variables '(yas-trigger-key "TAB"))

;; (define-key yas-minor-mode-map (kbd "C-x i i") 'yas-insert-snippet)
;; (define-key yas-minor-mode-map (kbd "C-x i n") 'yas-new-snippet)
;; (define-key yas-minor-mode-map (kbd "C-x i v") 'yas-visit-snippet-file)




