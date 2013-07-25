(add-to-list 'load-path "~/.emacs.d/site-lisp/yasnippet")
(require 'yasnippet)
(yas/initialize)

(yas/load-directory "~/.emacs.d/site-lisp/yasnippet/snippets")
(yas/load-directory "~/.emacs.d/site-lisp/django-mode/snippets")
