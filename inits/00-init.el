;; -*- mode: emacs-lisp; coding: utf-8; indent-tabs-mode: nil -*-
;; ------------------------------------------------------------------------
;; @ init.el
;; ------------------------------------------------------------------------


;; theme setting
;; (color-theme-initialize)
(load-theme 'tango-dark t)
;; (load-theme 'adwaita t)
;; (load-theme 'dichromacy t)

;; スタートアップメッセージを消す
(setq inhibit-startup-screen -1)
(setq initial-scratch-message "")

;; 画面の左マージン
;; (setq default-left-margin 50)
;; (setq left-margin-width 50)
;; (set-window-margins (selected-window) 50 5)

;; Mouse copy
(setq mouse-drag-copy-region t)

;; 画面を分割する
;; (setq w (selected-window))
;; (setq w2 (split-window-below -12))
;; (select-window w2)
;; (multi-term)
;; (select-window w)

;; (windmove-default-keybindings)
(global-set-key (kbd "\C-c <left>")  'windmove-left)
(global-set-key (kbd "\C-c <down>")  'windmove-down)
(global-set-key (kbd "\C-c <up>")    'windmove-up)
(global-set-key (kbd "\C-c <right>") 'windmove-right)

;; リスト2 行番号を指定して移動
(global-set-key "\M-g" 'goto-line)

;; display line number
;; (set-face-attribute 'linum nil :foreground "#999" :height 0.9)
(global-linum-mode nil)
;; (setq linum nil)
;; (setq linum-format "%4d ")
(setq linum-format "")
;; (line-number-mode t)
;; (column-number-mode t)

;; restore previouse state of emacs when startup
(setq desktop-dirname "~/.emacs.d/desktop"
      desktop-base-file-name "emacs.desktop"
      desktop-base-lock-name "emacs.desktop.lock"
      desktop-globals-to-save '(extended-command-history))

;; (setq desktop-files-not-to-save "")
(desktop-save-mode 1)

;; display closing tabs
(show-paren-mode t)
(setq show-paren-delay 0)
(setq show-paren-style 'expression)
(set-face-background 'show-paren-match-face "#444")

;; change yes or no to y or n
(fset 'yes-or-no-p 'y-or-n-p)
;; don't backup
(setq make-backup-files nil)
;; ignore case
(setq completion-ignore-case t)
;; auto reload buffer
(global-auto-revert-mode 1)

