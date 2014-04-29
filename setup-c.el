

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

(provide 'setup-c)

;;; setup-c.el ends here
