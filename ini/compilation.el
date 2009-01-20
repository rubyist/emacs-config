(setq compilation-exit-message-function
      (lambda (status code msg)
        (when (and (eq status 'exit) (zerop code))
  	  (bury-buffer "*compilation*")
          (delete-window (get-buffer-window (get-buffer "*compilation*"))))
  	(cons msg code)))