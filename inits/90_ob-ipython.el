(require 'ob-ipython)
;; コードを評価するとき尋ねない
(setq org-confirm-babel-evaluate nil)
;; ソースコードを書き出すコマンド
(defun org-babel-tangle-and-execute ()
  (interactive)
  (org-babel-tangle)
  (org-babel-execute-buffer)
  (org-display-inline-images))
(define-key org-mode-map (kbd "C-c C-v C-m") 'org-babel-tangle-and-execute)

(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t)))
