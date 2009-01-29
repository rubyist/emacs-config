(setq objc-mode-hook
      (function (lambda ()
                  (sab-newline-hook)
                  (coding-hook)
                  (setq c-basic-offset 4))))


;; My conventions for Cocoa are Foo.h - but the auto-mode-alist
;; searches with sensitivity based on case-fold-search, this function
;; will check for that and set Foo.h to objc-mode while keeping foo.h
;; in c-mode.
(defun determine-header-objc-ness ()
  (let (sensitivity)
    (setq sensitivity case-fold-search)
    (setq case-fold-search nil)
    (if (string-match "^[A-Z].*\\.h$" (buffer-name))
        (objc-mode)
      (c-mode))
    (setq case-fold-search sensitivity)))
    
(add-to-list 'auto-mode-alist '("\\.h$" . determine-header-objc-ness))
