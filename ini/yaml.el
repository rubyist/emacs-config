(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yrml$" . yaml-mode))
(add-hook 'yaml-mode-hook 'coding-hook)