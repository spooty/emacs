;; -*- mode: emacs-lisp; coding: utf-8; indent-tabs-mode: nil -*-
;; ------------------------------------------------------------------------
;; @ auto-complete.el
;; http://www.emacswiki.org/emacs/AutoComplete
;; ------------------------------------------------------------------------

(require 'auto-complete)
(require 'auto-complete-config)

(global-auto-complete-mode t)
(ac-config-default)
(setq ac-auto-start 1)
(setq ac-use-menu-map t) ;; C-n/C-pで候補選択可能
(setq ac-comphist-file "~/.emacs.d/ac-comphist.dat") ;; 補完履歴のキャッシュ先

;; (add-to-list 'ac-dictionary-directories "~/.emacs.d/snippets/") ;; 常にYASnippetを補完候補に
;; (defvar my-ac-sources
;;   '(ac-source-yasnippet
;;     ac-source-abbrev
;;     ac-source-dictionary
;;     ac-source-words-in-same-mode-buffers))
;; (setq ac-source-yasnippet my-ac-sources)
;; (add-to-list 'ac-sources 'ac-source-yasnippet) ;; 常にYASnippetを補完候補に

