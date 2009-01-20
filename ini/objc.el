(setq objc-mode-hook
      (function (lambda ()
                  (sab-newline-hook)
                  (coding-hook)
                  (setq c-basic-offset 4))))
