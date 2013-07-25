;; run emacs server only once in one user session
(if (and (boundp 'server-process)
	 (memq (process-status server-process) 
	       '(connect listen open run))
         (get-buffer "*scratch*"))
    (server-start))
