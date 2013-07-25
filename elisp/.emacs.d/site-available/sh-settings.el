(add-hook 'sh-mode-hook 
          '(lambda () 
             (if (equal window-system nil) ; in terminal
                 (ansi-color-for-comint-mode-on))))


