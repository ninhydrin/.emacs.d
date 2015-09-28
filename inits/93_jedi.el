;;; 93_jedi.el ---
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)
(setq jedi:setup-keys t)
(require 'jedi)
