;;; scala mode
(unless (package-installed-p 'scala-mode2)
(package-refresh-contents) (package-install 'scala-mode2))
(unless (package-installed-p 'ensime)
(package-refresh-contents) (package-install 'ensime))


(setenv "PATH" (concat "PATH_TO_SBT:" (getenv "PATH")))
(setenv "PATH" (concat "PATH_TO_SCALA:" (getenv "PATH")))

(require 'scala-mode2)

(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
