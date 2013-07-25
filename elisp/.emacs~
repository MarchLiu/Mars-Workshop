(defun enable-settings (settings)
  "link a plugin file from ~/.emacs.d/site-available/ to ~/.emacs.d/site-enabled/"
  (interactive "Bsettings: ")
  (let '(command (concat "ln -s ~/.emacs.d/site-available/" settings " ~/.emacs.d/site-enabled/"))
    (start-process-shell-command "enable-settings" 
                                 "*Messages*" command)))

(defun disable-settings (settings)
  "remove a plugin file from ~/.emacs.d/site-enabled/"
  (interactive "Bsettings: ")
  (let '(command (concat "rm ~/.emacs.d/site-enabled/" settings ".el"))
    (start-process-shell-command "disable-settings" 
                                 "*Messages*" command)))

(add-to-list 'load-path "~/.emacs.d/site-lisp")

(dolist (script (file-expand-wildcards "~/.emacs.d/site-enabled/*.el"))
  (load script))

