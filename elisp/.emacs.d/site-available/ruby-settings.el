(if (< emacs-major-version 23)
    (progn
      (add-to-list 'load-path "~/.emacs.d/site-lisp/ruby-mode")
      (autoload 'ruby-mode "ruby-mode" "Major mode for ruby files" t)
      (add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
      (add-to-list 'interpreter-mode-alist '("ruby" . ruby-mode)))
  (progn 
    (require 'rvm)
    (rvm-use-default)))

(defun python-mode-hook ()
  ; this gets called by outline to deteremine the level. Just use the length of the whitespace
  (custom-set-variables
   '(indent-tabs-mode nil)
   '(tab-width 4)
   '(tab-stop-list nil)
   )
)
