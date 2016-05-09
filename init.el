(defun add-to-load-path (&rest paths)
  (let (path)
    (dolist (path paths paths)
      (let ((default-directory
	      (expand-file-name (concat user-emacs-directory path))))
	(add-to-list 'load-path default-directory)
	(if (fboundp 'normal-top-level-add-subdirs-to-load-path)
	    (normal-top-level-add-subdirs-to-load-path))))))
(load-file "~/.emacs.d/inits/init-loader.el")
(add-to-load-path "elpa")
(require 'init-loader)
(setq init-loader-show-log-after-init nil)
(setq inits_dir (expand-file-name "~/.emacs.d/inits/"))
(init-loader-load inits_dir)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(anzu-deactivate-region t)
 '(anzu-mode-lighter "")
 '(anzu-search-threshold 1000)
 '(custom-enabled-themes (quote (molokai)))
 '(custom-safe-themes
   (quote
    ("211bb9b24001d066a646809727efb9c9a2665c270c753aa125bace5e899cb523" "d1507f294adc9fbfdf8ba9970f4243bef9a515437744c06ffd8be49a1c22afc1" "42c7f1aa7a3db4ab8efabf1d10c158c2f1414ac57cb207cde815eadad72170d2" "a32bf7b5e357d13ef48195fa075f4d24ac6cdd047f51c80da96391cf181a3598" default)))
 '(shell-pop-shell-type
   (quote
    ("ansi-term" "*shell-pop-ansi-term*"
     (lambda nil
       (ansi-term shell-pop-term-shell)))))
 '(shell-pop-term-shell "/usr/local/bin/zsh")
 '(shell-pop-universal-key "C-t")
 '(shell-pop-window-position "bottom")
 '(shell-pop-window-size 30)
 '(yas-trigger-key "TAB"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(linum-highlight-face ((t (:foreground "black" :background "yellow"))))
 '(rainbow-delimiters-depth-1-face ((t (:foreground "Brown"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "Green"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "Blue"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "Magenta"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "Red"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "Cyan")))))
