;;yasnippet
(add-to-list 'load-path
	     "~/.emacs.d/site-lisp/yasnippet")


(require 'yasnippet)

(yas-global-mode 1)

;(require 'cl)


(setq yas-snippet-dirs
      '("~/.emacs.d/snippets"	
	"~/.emacs.d/plugins/yasnippet-master/snippets"))

(custom-set-variables '(yas-trigger-key "TAB"))

(define-key yas-minor-mode-map (kbd "C-;") 'yas-insert-snippet)

(define-key yas-minor-mode-map (kbd "C-x y n") 'yas-new-snippet)

(define-key yas-minor-mode-map (kbd "C-x y v") 'yas-visit-snippet-file)

(require 'dropdown-list)

(setq yas-prompt-functions '(yas-dropdown-prompt
			     
			     yas-ido-prompt
			     
			     yas-completing-prompt))

(setq hippie-expand-try-functions-list

      '(try-complete-file-name-partially

	try-complete-file-name

	try-expand-all-abbrevs

	try-expand-dabbrev

	try-expand-dabbrev-all-buffers

	try-expand-dabbrev-from-kill

	try-complete-lisp-symbol-partially
	try-complete-lisp-symbol))
(global-set-key (kbd "C-;") 'hippie-expand)


(setq yas-prompt-functions '(yas-dropdown-prompt
			     yas-ido-prompt
			     yas-completing-prompt))


