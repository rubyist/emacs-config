;;; config loading functions
(setq ini-directory (concat dotfiles-dir "/ini"))

(defvar ini-loaded ()
  "List of files loaded during initialization")

(defvar ini-not-loaded ()
  "List of files that failed to load during initialization")

(defun ini-try-load (inifn ext)
  "Attempt to load an ini-type elisp file"
  (let ((fn (concat ini-directory "/" inifn ext)))
    (if (file-readable-p fn)
        (progn
          (load-file fn)
          (setq ini-loaded (cons inifn ini-loaded))))))

(defun ini-load (inifn)
  "Load an ini-type elisp file"
  (cond ((ini-try-load inifn ".elc"))
        ((ini-try-load inifn ".el"))
        (t (setq ini-not-loaded (cons inifn ini-not-loaded))
           (message (concat inifn " not found")))))

(defun edit-ini-file (fn)
  "Open the ini file in a buffer for editing"
  (interactive "MIni file: ")
  (let ((inifile (concat ini-directory "/" "ini-" fn ".el")))
    (if (file-readable-p inifile)
        (find-file inifile)
      (message "ini for %s not found" inifile))))

(defun load-ini-files ()
  "Load all ini-* files"
  (let ((files (directory-files ini-directory nil "^ini-.*\\.el$")))
    (while (not (null files))
      (ini-load (substring (car files) 0 -3))
      (setq files (cdr files)))))

(provide 'ini-load)
