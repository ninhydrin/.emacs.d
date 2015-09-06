;Mac用にキー配列変更
(setq ns-command-modifier (quote meta))
(setq ns-alternate-modifier (quote super))
(define-key global-map (kbd "C-h") 'delete-backward-char) 
(define-key global-map (kbd "C-o") 'popup-select-window)
(define-key global-map (kbd "C-}") 'next-buffer)
(define-key global-map (kbd "C-{") 'previous-buffer)

;(define-key global-map (kbd "C-s-o ") 'previous-multiframe-window)
;(define-key global-map (kbd "C-x p") 'previous-multiframe-window)
(adefine-key global-map (kbd "\C-r") 'occur) 
(global-set-key "\M-g" 'goto-line)
(global-set-key (kbd "C-M-h") (lambda () (interactive) (move-to-window-line 0)))
(global-set-key (kbd "C-M-m") (lambda () (interactive) (move-to-window-line nil)))
(global-set-key (kbd "C-M-l") (lambda () (interactive) (move-to-window-line -1)))





