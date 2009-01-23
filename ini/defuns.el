;;; Misc functions
(defun sab-newline-hook ()
  "Turn this on for a mode to automatically indent while you type."
  (define-key (current-local-map) "\C-m" 'newline-and-indent))

(defun coding-hook ()
  "Enable things that are convenient across all coding buffers."
  (set (make-local-variable 'comment-auto-fill-only-comments) t)
  (make-local-variable 'column-number-mode)
  (column-number-mode t)
  (setq save-place t)
  (auto-fill-mode)
  (if window-system (hl-line-mode t)))

(defun untabify-buffer ()
  (interactive)
  (untabify (point-min) (point-max)))

(defun indent-buffer ()
  (interactive)
  (indent-region (point-min) (point-max)))

(defun cleanup-buffer ()
  "Perform a bunch of operations on the whitespace content of a buffer."
  (interactive)
  (indent-buffer)
  (untabify-buffer)
  (delete-trailing-whitespace))

;; TODO belongs in an ido specific config?
(defun recent-ido-find-file ()
  "Find a recent file using ido."
  (interactive)
  (let ((file (ido-completing-read "Choose recent file: " recentf-list nil t)))
    (when file
      (find-file file))))

(defun ruby-capitalize (fn)
  (capitalize (file-name-nondirectory
               (file-name-sans-extension fn))))

(defun ruby-classify (fn)
  (interactive)
  (cond
   ((string-match "_" fn) (ruby-classify (replace-match "" nil nil fn)))
   (t fn)))

(defun modeline-red ()
  (interactive)
  (set-face-background 'modeline "#FF0000"))

(defun modeline-green ()
  (interactive)
  (set-face-background 'modeline "#00FF00"))

(defun modeline-reset ()
  (interactive)
  (set-face-background 'modeline "#C9C9C9"))