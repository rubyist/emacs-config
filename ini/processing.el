(require 'processing-mode)

(setq processing-location "/Users/scott/Applications/Processing.app/Contents/Resources/Java/")

(add-to-list 'auto-mode-alist '("\\.pde$" . processing-mode))
