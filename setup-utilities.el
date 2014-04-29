

(defun toggle-fullscreen ()
  (interactive)
  (set-frame-parameter nil 'fullscreen (if (frame-parameter nil 'fullscreen)
					   nil
					 'fullboth)))
(global-set-key [(meta return)] 'toggle-fullscreen)

;; cscope
(require 'xcscope)
(define-key cscope:map (kbd "C-,") 'cscope-find-this-symbol)
(define-key cscope:map (kbd "C-.") 'cscope-find-global-definition)
(define-key cscope:map (kbd "M-,") 'cscope-find-functions-calling-this-function)
(define-key cscope:map (kbd "M-.") 'cscope-find-called-functions)
(define-key cscope:map (kbd "M-p") 'cscope-prev-symbol)
(define-key cscope:map (kbd "M-n") 'cscope-next-symbol)
(define-key cscope:map (kbd "M-*") 'cscope-pop-mark)

(provide 'setup-utilities)

;;; setup-utilities.el ends here
