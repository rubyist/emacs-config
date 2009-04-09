;;; Global key bindings
(global-set-key "\C-\M-h" 'backward-kill-word)

(global-set-key (kbd "C-x \\") 'align-regexp)

(global-set-key (kbd "M-/") 'hippie-expand)

(global-set-key (kbd "C-c n") 'cleanup-buffer)

(global-set-key "\C-s" 'isearch-forward-regexp)
(global-set-key "\C-r" 'isearch-backward-regexp)
(global-set-key "\C-\M-s" 'isearch-forward)
(global-set-key "\C-\M-r" 'isearch-backward)

(global-set-key "\C-x\C-i" 'ido-imenu)

(global-set-key (kbd "C-x M-f") 'ido-find-file-other-window)
(global-set-key (kbd "C-x C-M-f") 'find-file-in-project)
(global-set-key (kbd "C-x f") 'recentf-ido-find-file)
(global-set-key (kbd "C-x C-p") 'find-file-at-point)
(global-set-key (kbd "C-c y") 'bury-buffer)
(global-set-key (kbd "C-c r") 'revert-buffer)
(global-set-key (kbd "M-`") 'file-cache-minibuffer-complete)
(global-set-key (kbd "C-x C-b") 'ibuffer)

(windmove-default-keybindings) ;; Shift+direction
(global-set-key "\C-xO" (lambda () (interactive) (other-window -1))) ;; back one
(global-set-key "\C-x\C-o" (lambda () (interactive) (other-window 2))) ;; forward two

(global-set-key (kbd "C-x m") 'eshell)

(global-set-key (kbd "C-x M") (lambda () (interactive) (eshell t)))

(global-set-key (kbd "C-x M-m") 'shell)

(global-set-key (kbd "\C-x g") 'magit-status)

(global-set-key (kbd "\C-c \C-t") 'toggle-buffer)

(global-set-key (kbd "\C-x \C-m") 'execute-extended-command)

(global-set-key "\C-w" 'backward-kill-word)
(global-set-key (kbd "\C-x \C-k") 'kill-region)