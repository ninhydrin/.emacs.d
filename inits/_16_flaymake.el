;;flymake
(require 'flymake)
(defun flymake-cc-init ()
  (let* ((temp-file   (flymake-init-create-temp-buffer-copy
                       'flymake-create-temp-inplace))
         (local-file  (file-relative-name
                       temp-file
                       (file-name-directory buffer-file-name))))
    (list "g++" (list "-Wall" "-Wextra" "-fsyntax-only" local-file))))


(push '("\\.cpp$" flymake-cc-init) flymake-allowed-file-name-masks)
(push '("\\.c$" flymake-cc-init) flymake-allowed-file-name-masks)
(add-hook 'c-mode-hook
          '(lambda ()
             (flymake-mode t)))
(add-hook 'c++-mode-hook
          '(lambda ()
             (flymake-mode t)))
(add-hook 'tex-mode-hook
          '(lambda ()
             (flymake-mode t)))
