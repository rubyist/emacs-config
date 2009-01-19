;;; Misc functions
(defun sab-newline-hook ()
  "Turn this on for a mode to automatically indent while you type."
  (define-key (current-local-map) "\C-m" 'newline-and-indent))
