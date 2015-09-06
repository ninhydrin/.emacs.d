;;
;;helm
;;

(add-to-list 'load-path "~/.emacs.d/site-lisp/helm/")
(require 'helm-config)
(helm-mode 1)

;; ミニバッファでC-hをバックスペースに割り当て
(define-key helm-read-file-map (kbd "C-h") 'delete-backward-char)
(define-key helm-map (kbd "C-h") 'delete-backward-char)
(define-key helm-find-files-map (kbd "C-h") 'delete-backward-char)

(define-key helm-find-files-map (kbd "TAB") 'helm-execute-persistent-action)
 (define-key helm-read-file-map (kbd "TAB") 'helm-execute-persistent-action)
