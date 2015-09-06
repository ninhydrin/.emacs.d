(require 'auto-complete-config)

(defvar my-ac-sources

  '(ac-source-yasnippet

    ac-source-abbrev

    ac-source-dictionary

    ac-source-words-in-same-mode-buffers))

(global-auto-complete-mode 1)

(setq ac-use-menu-map t)

(defun ac-emacs-lisp-mode-setup ()
  (setq ac-sources (append '(ac-source-features ac-source-yasnippet ac-source-functions ac-source-variables ac-source-symbols) ac-sources)))
