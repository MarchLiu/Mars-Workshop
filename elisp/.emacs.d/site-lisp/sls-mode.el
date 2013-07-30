(defvar sls-mode-hook nil)

(defun check-first-line (content)
  (let ((first-line (car (split-string content "\n"))))
	(if (or (string-equal "#!py" first-line) (string-equal "#!pydsl" first-line))
		(python-mode)
	  (yaml-mode))))

(defun sls-mode()
  "Major mode router for salt stack sls file"
  (interactive)
  (check-first-line (buffer-string)))

(provide 'sls-mode)
