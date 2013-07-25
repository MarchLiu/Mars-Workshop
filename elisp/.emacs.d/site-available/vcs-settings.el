;; psvn
(require 'psvn)

;; Mercrial
;; (add-to-list 'load-path "~/.emacs.d/site-lisp/mercurial")
;; (require 'mercurial)

;; git, only in emacs 23+

(if (>= emacs-major-version 23)
    (progn
      (add-to-list 'load-path "~/.emacs.d/site-lisp/magit")
      (require 'magit)))
