(add-to-list 'load-path "~/.emacs.d/site-lisp/auto-complete")
(add-to-list 'load-path "~/.emacs.d/site-lisp/auto-complete-clang")

;; load auto-complete
;; (require 'pos-tip)
(require 'auto-complete)  
(require 'auto-complete-config)  
(add-to-list 'ac-dictionary-directories "~/.emacs.d/site-lisp/auto-complete/dict")  
(ac-config-default)  

;; (global-auto-complete-mode t)

;; (define-key ac-mode-map  [(control return)] 'auto-complete)  

(require 'auto-complete-clang)

(setq ac-auto-start nil)
(setq ac-quick-help-delay 0.5)

;; (setq ac-clang-flags
;;       (mapcar (lambda (item)(concat "-I" item))
;;               (split-string
;; 			   "
;;  /usr/include/c++/4.2.1
;;  /usr/include/c++/4.2.1/backward
;;  /usr/local/include
;;  /usr/bin/../lib/clang/4.1/include
;;  /usr/include
;;  /System/Library/Frameworks
;;  /Library/Frameworks
;; "
;; 			   )))

;; (ac-set-trigger-key "TAB")
(define-key ac-mode-map  [(control return)] 'auto-complete)

(defun my-ac-config ()
  (setq-default ac-sources '(ac-source-abbrev ac-source-dictionary 
											  ac-source-words-in-same-mode-buffers))
  (add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)
  ;; (add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
  ;; (add-hook 'objc-mode-hook 'ac-cc-mode-setup)
  (add-hook 'ruby-mode-hook 'ac-ruby-mode-setup)
  (add-hook 'css-mode-hook 'ac-css-mode-setup)
  (add-hook 'auto-complete-mode-hook 'ac-common-setup)
  (global-auto-complete-mode t))
(defun my-ac-cc-mode-setup ()
  (setq ac-sources (append '(ac-source-clang ac-source-yasnippet) ac-sources)))
(add-hook 'c-mode-common-hook 'my-ac-cc-mode-setup)
;; ac-source-gtags
(my-ac-config)
