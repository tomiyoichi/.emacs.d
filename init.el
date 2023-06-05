;; ;;; package.el
(require 'package)
;;
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("ELPA" . "http://tromey.com/elpa/") t);; ;; MELPAを追加

;; ;; 初期化
(package-initialize)
;;
;; -------------------------------------------------------------------------
;; C - hをバックスペースに設定
(global-set-key "\C-h" 'delete-backward-char)

;; 対応する括弧をハイライトする
(show-paren-mode 1)

;; 1行づつスクロールする
(setq scroll-conservatively 1)

;; カーソル位置の桁数をモードライン行に表示する
(column-number-mode 1)

;; カーソル位置の行数をモードライン行に表示する
(line-number-mode 1)

;; リージョンを色付きにする
(transient-mark-mode 1)

;; 時間も表示
(display-time)

;; line number の表示
(require 'linum)
(global-linum-mode 1)
;; line number を分かりやすくする
(set-face-attribute 'linum nil
            :foreground "#a9a9a9"
            :background "#404040"
            :height 0.9)

;; メニューバーを非表示
(menu-bar-mode 0)
;; tabサイズ
(setq default-tab-width 4)
;; タイトルにフルパス表示
(setq frame-title-format "%f")
;; スクロールは 1 行ごと
(setq mouse-wheel-scroll-amount '(1 ((shift) . 5)))
;; スクロールの加速をやめる
(setq mouse-wheel-progressive-speed nil)
;; 大文字・小文字を区別しない
(setq case-fold-search t)

;; 対応する括弧の強調
(show-paren-mode t)

;; 外部デバイスとクリップボードを共有
(setq x-select-enable-clipboard t)

;; カーソル位置を表示
(setq line-number-mode t)
(setq column-number-mode t)
