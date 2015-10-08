;;; 96_ein.el ---                                    -*- lexical-binding: t; -*-

(require 'ein)
(add-hook 'ein:connect-mode-hook 'ein:jedi-setup)
(setq ein:use-auto-complete t)
