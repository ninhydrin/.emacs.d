					;(require 'autoinsert)
(autoload 'find-file-hooks "auto-insert")
(add-hook 'find-file-hooks 'auto-insert)

(setq auto-insert-query nil)
(setq auto-insert-directory "~/.emacs.d/inits/insert/")
(defvar my:autoinsert-template-replace-alist
  '(("%file%" .
     (lambda()
       (file-name-nondirectory (buffer-file-name))))
    ("%author%" . (lambda()(identity user-full-name)))
    ("%email%"  . (lambda()(identity user-mail-address)))
    ("%filewithoutext%" .
     (lambda()
       (file-name-sans-extension (file-name-nondirectory (buffer-file-name)))))
    ))
(defun my:template ()
  (time-stamp)
  (mapc #'(lambda(c)
            (progn
              (goto-char (point-min))
              (replace-string (car c) (funcall (cdr c)) nil)))
        my:autoinsert-template-replace-alist)
  (goto-char (point-max))
  (message "done."))

(setq auto-insert-alist
      (nconc '(
               ("\\.el$"   . ["template.el"   my:template])
               ("\\.rb$"   . ["template.rb"   my:template])
               ("\\.zsh$"  . ["template.zsh"  my:template])
               ("\\.sh$"   . ["template.sh"   my:template])
               ("\\.f90$"  . ["template.f90"  my:template])
               ("\\.cpp$"  . ["template.cpp"  my:template])
               ("\\.tex$"  . ["template.tex"  my:template])
               ("\\.howm$" . ["template.howm" my:template])
               ("\\.org$"  . ["template.org"  my:template])
               ("\\.muse$" . ["template.muse" my:template])
	       ("\\.c$"    . ["template.c"    my:template])
	       ("\\.cpp$"  . ["template.muse" my:template])
               ) auto-insert-alist))

(setq auto-insert-alist
      (append '(
                (("\\.c$" . "c template")
                 nil ;; ここに"name?"とか書くと、最初にミニバッファで"name?"ってでて入力を促される。入力したものはstrという変数に入る。
                 "#include<stdio.h> \n"
		 "#include<string.h> \n"
		 "#include<stdlib.h> \n"
		 "#include<math.h> \n"
                 "\n"
		 "\n"
		 "\n"
		 "int main(){"
		 "\n"
		 "\n"
		 _ ;; アンダーバーを書いたところにカーソルが移動する
		 "\n"
		 "\n"
		 "   return 0;\n"
		 "}"
                 
                 )

                (("\\.cpp$" . "cpp template")
                 nil ;; ここに"name?"とか書くと、最初にミニバッファで"name?"ってでて入力を促される。入力したものはstrという変数に入る。
                 "#include<stdio.h> \n"
		 "#include<string.h> \n"
		 "#include<stdlib.h> \n"
		 "#include<math.h> \n"
                 "\n"
		 "\n"
		 "\n"
		 "int main(){"
		 "\n"
		 "\n"
		 _ ;; アンダーバーを書いたところにカーソルが移動する
		 "\n"
		 "\n"
		 "   return 0;\n"
		 "}"
                 
                 ) 
		(("\\.py$" . "python template")
		 nil ;; ここに"name?"とか書くと、最初にミニバッファで"name?"ってでて入力を促される。入力したものはstrという変数に入る。
		 "#!/usr/bin/env python \n"
		 "# -*- coding: utf-8 -*- \n"
		 "import os \n"
		 "import sys \n"
		 "import numpy as np \n"
		 "import matplotlib.pyplot as plt\n"
		 "\n"
		 "\n"
		 "\n"
		 _ ;; アンダーバーを書いたところにカーソルが移動する
		 "\n"
		 "\n"
                 )

		auto-insert-alist))

)

