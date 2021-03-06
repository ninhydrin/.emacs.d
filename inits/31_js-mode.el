(require 'js2-mode)
;; this is the path that was given from cmd 'which tern'
(add-to-list 'load-path "~/.nodebrew/current/bin/tern")
(autoload 'tern-mode "tern.el" nil t)
;;(setenv "PATH" (concat "/usr/local/bin:" (getenv "PATH")))
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

(autoload 'js2-mode "js2-mode" nil t)

(add-hook 'js2-mode-hook
    (lambda ()
        (tern-mode t)))

(eval-after-load 'tern
    '(progn
        (require 'tern-auto-complete)
        (tern-ac-setup)))

(add-hook 'js2-mode-hook
          '(lambda ()
             (when (locate-library "tern")
               (setq tern-command '("tern" "--no-port-file")) ;; .term-port を作らない
               (tern-mode t)
               (eval-after-load 'tern
                 '(progn
                    (require 'tern-auto-complete)
                    (tern-ac-setup)))
               )
             ))

