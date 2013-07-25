(add-to-list 'magic-mode-alist '("\\(.\\|\n\\)*\n@implementation" . objc-mode))
(add-to-list 'magic-mode-alist '("\\(.\\|\n\\)*\n@interface" . objc-mode))
(add-to-list 'magic-mode-alist '("\\(.\\|\n\\)*\n@protocol" . objc-mode))

(add-hook 'objc-mode-hook  
		  '(lambda()  
			 (setq tab-width 4)  
			 (setq c-basic-offset 4)  
			 (setq indent-tabs-mode nil)
			 (c-set-style "whitesmith")))
