;; -*- mode: emacs-lisp; coding: utf-8; indent-tabs-mode: nil -*-
;; ------------------------------------------------------------------------
;; @ tabbar.el
;; http://www.emacswiki.org/emacs/tabbar.el
;; ------------------------------------------------------------------------

(require 'tabbar)
(tabbar-mode 1)

;; グループ化しない
;; (setq tabbar-buffer-groups-function nil)

(global-set-key (kbd "<M-right>") 'tabbar-forward-tab)
(global-set-key (kbd "<M-left>") 'tabbar-backward-tab)

(global-set-key (kbd "<M-up>") 'tabbar-forward-group)
(global-set-key (kbd "<M-down>") 'tabbar-backward-group)

;; 左に表示されるボタンを無効化
(dolist (btn '(tabbar-buffer-home-button
               tabbar-scroll-left-button
               tabbar-scroll-right-button))
  (set btn (cons (cons "" nil)
                 (cons "" nil))))
 
;; タブ同士の間隔
(setq tabbar-separator '(1.8))
;; ウインドウからはみ出たタブを省略して表示
(setq tabbar-auto-scroll-flag nil)

;; Set tab group
(setq tabbar-buffer-groups-function
      (lambda ()
        (list (cond 
               ;; ((equal "*scratch*" (buffer-name)) "emacs")
               ((string-match "^*terminal\<[0-9]\>" (buffer-name)) "terminal")
               ;; ((eq major-mode 'javascript-mode js-mode nxhtml-mode html-mode css-mode) "HTML")
               ((eq major-mode 'javascript-mode) "HTML")             
               ((eq major-mode 'js-mode) "HTML")
               ((eq major-mode 'nxhtml-mode) "HTML")
               ((eq major-mode 'web-mode) "HTML")
               ((eq major-mode 'html-mode) "HTML")
               ((eq major-mode 'css-mode) "HTML")
               ((eq major-mode 'sql-mode) "SQL")
               (t "All Buffers")))))

(defun my-tabbar-buffer-list ()
  (delq nil
        (mapcar #'(lambda (b)
                    (cond
                     ((eq (current-buffer) b) b) ; Always include the current buffer.
                     ((buffer-file-name b) b)
                     ((char-equal ?\  (aref (buffer-name b) 0)) nil)
                     ((equal "*scratch*" (buffer-name b)) b) ; *scratch*バッファは表示する
                     ((string-match "^*terminal\<[0-9]\>" (buffer-name b)) b) ; *terminal*バッファは表示する
                     ((char-equal ?* (aref (buffer-name b) 0)) nil) ; それ以外の * で始まるバッファは表示しない
                     ((buffer-live-p b) b)))
                (buffer-list))))
(setq tabbar-buffer-list-function 'my-tabbar-buffer-list)

;; (defun goto-tab-group (group-name)
;;   (interactive)
;;   "Jump to a specific tabbar group."
;;   (unless (and (featurep 'tabbar)
;;                tabbar-mode)
;;     (error "Error: tabbar-mode not turned on."))
;;   (set tabbar-tabsets-tabset (tabbar-map-tabsets 'tabbar-selected-tab)) ;; refresh groups
;;   (let* ( (groups (mapcar #'(lambda (group)
;;                               (format "%s" (cdr group)))
;;                           (tabbar-tabs tabbar-tabsets-tabset))))
;;     (mapc #'(lambda (group)
;;               (when (string= group-name (format "%s" (cdr group)))
;;                 (message "Switch to group '%s', current buffer: %s" (cdr group) (car group))
;;                 (switch-to-buffer (car group)) ))
;;           (tabbar-tabs tabbar-tabsets-tabset))) )
;; (defun example-using-goto-tab-group ()
;; (interactive)
;; (goto-tab-group "BLUE")) ;; predefined existing tab group

;; (setq tabbar-buffer-list-function
;;       (lambda ()
;;         (remove-if
;;          (lambda(buffer)
;;            (find (aref (buffer-name buffer) 0) " *"))
;;            (buffer-list))))
