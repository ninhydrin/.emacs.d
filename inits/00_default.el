;初期画面変更					;
(setq inhibit-startup-message t)

;言語を日本語にする
(set-language-environment 'Japanese)

;; 英語
 (set-face-attribute 'default nil
             :family "Menlo" ;; font
             :height 170)    ;; font size
;; mac用起動時フルスクリーン
;(set-frame-parameter nil 'fullscreen 'fullboth)

;; 日本語
(set-fontset-font
 nil 'japanese-jisx0208

;; (font-spec :family "Hiragino Mincho Pro")) ;; font
  (font-spec :family "Hiragino Kaku Gothic ProN")) ;; font

;; 半角と全角の比を1:2にしたければ
(setq face-font-rescale-alist
;;        '((".*Hiragino_Mincho_pro.*" . 1.2)))
      '((".*Hiragino_Kaku_Gothic_ProN.*" . 1.2)));; Mac用フォント設定

; 極力UTF-8とする
(prefer-coding-system 'utf-8)

;; ツールバーを非表示
(tool-bar-mode -1)

;; メニューバーを非表示
(menu-bar-mode -1)

;画面透過
(set-frame-parameter (selected-frame) 'alpha '(95 50))

;; yes or noをy or n
(fset 'yes-or-no-p 'y-or-n-p)

;;バックアップ無し
(setq make-backup-files nil)

;; 行番号表示
(global-linum-mode t)
(set-face-attribute 'linum nil
                    :foreground "#800"
                    :height 0.9)


(load-theme 'molokai t)
(enable-theme 'molokai)
