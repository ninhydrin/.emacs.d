;; auto-install
;; (install-elisp "http://www.emacswiki.org/emacs/download/auto-install.el)
(when (require 'auto-install nil t)
(declare-function auto-install-update-emacswiki-package-name ())
(declare-function auto-install-compatibility-setup ())
(declare-function master-set-slave ())
  (auto-install-update-emacswiki-package-name t)
  (auto-install-compatibility-setup))
