(add-to-list 'load-path "~/.emacs.d/site-lisp/django-mode")
(if (>= emacs-major-version 23)
    (progn
      (require 'django-html-mode)
      (add-to-list 'auto-mode-alist 
                   '("\\.djhtml$" . django-html-mode))))

(require 'django-mode)
