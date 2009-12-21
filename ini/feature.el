;; (require 'feature-mode)
(autoload 'feature-mode "feature-mode" "Mode for editing cucumber files" t)
(add-to-list 'auto-mode-alist '("\\.feature\\'" . feature-mode))