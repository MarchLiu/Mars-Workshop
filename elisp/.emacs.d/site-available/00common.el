(require 'color-theme)

(fset 'yes-or-no-p 'y-or-n-p) ;将yes/no替换为y/n
(column-number-mode t) ; 显示列号
(display-time-mode 1) ; 显示时间
(setq display-time-24hr-format t) ; 24小时格式
(setq display-time-day-and-date t) ; 显示日期
(setq indent-tabs-mode nil)
(setq default-tab-width 4) 
(setq tab-width 4) 
(setq tab-stop-list ()) 

(if (equal window-system nil) ; in terminal
    (load-file "~/.emacs.d/site-lisp/startt.el")
  (load-file "~/.emacs.d/site-lisp/startx.el")) ; or gui

(loop for x downfrom 40 to 1 do 
      (setq tab-stop-list (cons (* x 4) tab-stop-list))) 
