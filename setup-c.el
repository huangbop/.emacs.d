

;; cscope
(require 'xcscope)
(define-key cscope:map (kbd "C-,") 'cscope-find-this-symbol)
(define-key cscope:map (kbd "C-.") 'cscope-find-global-definition)
(define-key cscope:map (kbd "M-,") 'cscope-find-functions-calling-this-function)
(define-key cscope:map (kbd "M-.") 'cscope-find-called-functions)
(define-key cscope:map (kbd "M-p") 'cscope-prev-symbol)
(define-key cscope:map (kbd "M-n") 'cscope-next-symbol)
(define-key cscope:map (kbd "M-*") 'cscope-pop-mark)

;; semantic
(semantic-mode 1)
(global-semantic-idle-summary-mode 1)
(global-semantic-idle-completions-mode 1)

;; gud
(global-set-key (kbd "<f5>") 'gud-cont)
(global-set-key (kbd "<f7>") 'gud-up)
(global-set-key (kbd "<f8>") 'gud-down)
(global-set-key (kbd "<f9>") 'gud-break)
(global-set-key (kbd "<M-f9>") 'gud-tbreak)
(global-set-key (kbd "<S-f9>") 'gud-remove)
(global-set-key (kbd "<f10>") 'gud-next)
(global-set-key (kbd "<C-f10>") 'gud-until)
(global-set-key (kbd "<S-f10>") 'gud-finish)
(global-set-key (kbd "<f11>") 'gud-step)
(global-set-key (kbd "<f12>") 'gdb-many-windows)

(provide 'setup-c)

;;; setup-c.el ends here
