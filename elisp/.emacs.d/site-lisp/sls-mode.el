(defvar sls-mode-hook nil)

(defun fist-line (buffer)
  (let (first-line (car (split-string (buffer-string (current-buffer)) "\n")))
	(if (or (string-equal "#!py" first-line) (string-equal "#!pydsl" first-line))
		(python-mode)
	  (yaml-mode))))

(defun sls-mode()
  "Major mode router for salt stack sls file"
  (interactive)
  (buffer(curren-buffer))

(provide 'sls-mode)
