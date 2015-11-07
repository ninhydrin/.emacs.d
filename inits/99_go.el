(require 'exec-path-from-shell)
(let ((envs '("PATH" "GOPATH")))
  (exec-path-from-shell-copy-envs envs))

(add-to-list 'exec-path (expand-file-name "$GOPATH/bin"))
(add-to-list 'load-path "$GOPATH")
(add-to-list 'load-path "$GOPATH/src/github.com/nsf/gocode/emacs")
(add-to-list 'load-path "$GOPATH/src/github.com/dougm/goflymake")


(with-eval-after-load 'go-mode
  ;; auto-complete
  (require 'go-autocomplete)

  ;; company-mode
  (add-to-list 'company-backends 'company-go)
  (add-hook 'before-save-hook 'gofmt-before-save)
  ;; eldoc
  (add-hook 'go-mode-hook 'go-eldoc-setup)

  ;; key bindings
  (define-key go-mode-map (kbd "M-.") 'godef-jump)
  (define-key go-mode-map (kbd "M-,") 'pop-tag-mark))
