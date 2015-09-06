;;packageの追加
;(autoload 'package-list-packages "package")
(require 'package)
(package-initialize)
;(eval-after-load "pacakge"'(package-initialize))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
