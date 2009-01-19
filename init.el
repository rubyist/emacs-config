;; init.el
;;
;; This emacs configuration is inspired heavily by Jim Weirich's set
;; and the emacs-starter-kit.  If anything looks too cool for me to
;; have written it, assume it came from one of those.

;; Configure load paths
(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))
(add-to-list 'load-path dotfiles-dir)

;; 3rd party packages go into vendor/
(add-to-list 'load-path (concat dotfiles-dir "/vendor"))

;; Load configurations
(require 'ini-load)
(load-ini-files)
(message "init loaded")
