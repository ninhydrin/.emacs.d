;;
;;slime
;;

;(ADD-to-list 'auto-mode-alist '("¥¥.cl$" , common-lisp-mode))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/slime"))
;(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp"))
;(setq inferior-lisp-program "clisp")
;(setf inferior-lisp-program "/usr/local/bin/sbcl") ; your Lisp system
(setq inferior-lisp-program "ccl")
(autoload 'slime "slime")
(autoload 'slime "slime-autoloads")

;(require 'slime-autoloads)
;(require 'slime)
(eval-after-load "slime"
  '(slime-setup '(slime-repl slime-fancy slime-banner)))
(eval-after-load "slime"
  '(slime-setup '(slime-repl)))
