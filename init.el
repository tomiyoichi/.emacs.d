;; 設定ファイルは
;; C:\Users\(ユーザー名)\AppData\Roaming\.emacs.d\init.el
;; オリジナルは OneDrive に保存しているので、シンボリックリンクを作る
;; $ cd C:\Users\(ユーザー名)\AppData\Roaming\.emacs.d
;; $ mklink init.el C:\Users\(ユーザー名)\AppData\Roaming\.emacs.el\init.el;;
;;
;;  編集時の即時反映は M-x eval-buffer
;;

;; ;;; package.el
(require 'package)
;;
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("ELPA" . "http://tromey.com/elpa/") t);; ;; MELPAを追加

;; ;; 初期化
(package-initialize)

;; ;; 文字コード系
(set-default-coding-systems 'utf-8)
;; ロケール
(set-language-environment "Japanese")

;; ファイル読み書き時の優先文字コード
(prefer-coding-system 'utf-8)

;; 新規バッファ作成時に優先する文字コード
(set-default-coding-systems 'utf-8)

;; CUI Emacsでターミナルとのやりとりに使用する文字コード
(set-terminal-coding-system 'utf-8)

;; ;; パス
(setq default-directory "C:/Users/tomi/Documents")


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

;; 行番号の表示
(global-display-line-numbers-mode 1)

;; 行番号を分かりやすくする
(set-face-attribute 'line-number nil
                    :foreground "#a9a9a9"
                    :background "#404040"
                    :height 0.9)

;; 現在行の line number を目立たせる
(set-face-attribute 'line-number-current-line nil
                    :foreground "#ffffff"
                    :background "#505050"
                    :weight 'bold)

;; メニューバーを非表示
;(menu-bar-mode 0)
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

;; ファイルサイズ表示
(size-indication-mode t)

;; 保存の間隔
(setq auto-save-timeout 10)     ;; 秒   (デフォルト : 30)
(setq auto-save-interval 100)   ;; 打鍵 (デフォルト : 300)

;; カラーテーマ
;; (load-theme 'deeper-blue t)
(load-theme 'modus-vivendi t)

;; ;; ----- フォント系 -----
;; Iosevka + IBM Plex Sans JP フォント設定

(when (display-graphic-p) ;; GUI環境のみ有効化
  ;; デフォルトの英数字フォント
  (set-face-attribute 'default nil
                    :family "HackGenNerd"
                    :height 140)  ;; 14pt

  ;; 日本語キャラクターセット
  (dolist (charset '(japanese-jisx0208
                     japanese-jisx0212
                     japanese-jisx0213-1
                     japanese-jisx0213-2
                     katakana-jisx0201
                     kana han symbol cjk-misc bopomofo))
    (set-fontset-font t charset
                      (font-spec :family "HackGenNerd"))))

;; Magitのセットアップ
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(magit)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(global-set-key (kbd "C-x g") 'magit-status)
