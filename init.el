;; -------------------------------------------------------------------------
;; ;;; package.el
(require 'package)
;;
;; ;; MELPAを追加
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
;;
;; ;; Marmaladeを追加
(add-to-list 'package-archives  '("marmalade" . "http://marmalade-repo.org/packages/"))
;;
;; ;; 初期化
(package-initialize)
;;
;; -------------------------------------------------------------------------
;; C - hをバックスペースに設定
(global-set-key "\C-h" 'delete-backward-char)

;; 対応する括弧をハイライトする
(show-paren-mode 1)

;; 対応する括弧の色の設定
(setq show-paren-style 'mixed)
(set-face-background 'show-paren-match-face "grey")
(set-face-foreground 'show-paren-match-face "black")

;; 1行づつスクロールする
(setq scroll-conservatively 1)

;; カーソル位置の桁数をモードライン行に表示する
(column-number-mode 1)

;; カーソル位置の行数をモードライン行に表示する
(line-number-mode 1)

;; リージョンを色付きにする
(transient-mark-mode 1)

;; -----------------------n-------------------------------------------------
;; @ anything 
(defvar org-directory "")
(require 'anything)
(require 'anything-config)
(require 'anything-match-plugin)
(require 'anything-complete)
(anything-read-string-mode 1)
(require 'anything-show-completion)
(global-set-key "\C-x\C-b" 'anything-filelist+)
(global-set-key "\M-y" 'anything-show-kill-ring)

;; anything起動
(global-set-key (kbd "C-x b") 'anything)

;; ------------------------------------------------------------------------
;; @ auto-install.el
(require 'auto-install)
(setq auto-install-directory "~/.emacs.d/elisp/") ;Emacs Lispをインストールするディレクトリの指定
(auto-install-update-emacswiki-package-name t)
(auto-install-compatibility-setup) ;install-elisp.elとコマンド名を同期

;; ------------------------------------------------------------------------
;; @ autocomplete.el
(require 'auto-complete)
(require 'auto-complete-config)
(global-auto-complete-mode t)

(define-key ac-completing-map (kbd "C-n") 'ac-next)
(define-key ac-completing-map (kbd "C-p") 'ac-previous)
(define-key ac-completing-map (kbd "C-m") 'ac-complete)

;; -------------------------------------------------------------------------
;; @ minimap：バッファの縮小表示
(require 'minimap)

;; -------------------------------------------------------------------------
;; @ zenburn-theme
(require 'zenburn-theme)

;; -------------------------------------------------------------------------
;; @ php-mode
;; M-x minimap-mode
(require 'php-mode)

;; -------------------------------------------------------------------------
;; @ hlinum : 現在の行番号を表示
;; M-x linum-mode
;; http://d.hatena.ne.jp/tm_tn/20110605/1307238416
(require 'hlinum)

;; -------------------------------------------------------------------------
;; @ dirtree : ディレクトリ・ツリーの表示
;; M-x dirtree
(require 'dirtree)

;; -------------------------------------------------------------------------
;; @ eproject
(require 'eproject)
(defun ep-dirtree ()
  (interactive)
  (dirtree eproject-root t))

