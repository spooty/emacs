;; -*- mode: emacs-lisp; coding: utf-8; indent-tabs-mode: nil -*-
;; ------------------------------------------------------------------------
;; @ dired.el
;; http://www.emacswiki.org/emacs/DiredMode
;; ------------------------------------------------------------------------

;; (require 'dired)

;; dired-x
(require 'dired-x)

;; (add-hook 'dired-load-hook
;;           (lambda ()
;;             (dired-mode-map (kbd "V") 'my-dired-view-marking-files)
;;                 (dired-mode-map (kbd "C-f") 'dired-do-find-marked-files)))

;; diredを2つのウィンドウで開いている時に、デフォルトの移動orコピー先をもう一方のdiredで開いているディレクトリにする
(setq dired-dwim-target t)

;; ディレクトリを再帰的にコピーする
(setq dired-recursive-copies 'always)

; list dir first
;(setq ls-lisp-dirs-first t)
(setq dired-listing-switches "-aFl --group-directories-first")

;; 新規バッファを作らずにディレクトリを開く(デフォルトはa)
(define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file)
;; aを押したときに新規バッファを作って開くようにする
(define-key dired-mode-map "a" 'dired-advertised-find-file)


