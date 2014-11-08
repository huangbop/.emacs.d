
;; slime
(require 'slime-autoloads)
(setq inferior-lisp-program "sbcl")
(setq slime-contribs '(slime-fancy))

(add-hook 'slime-mode-hook 
	  (lambda ()
		  (define-key slime-mode-map (kbd "C-M-,") 'previous-buffer)
		  (define-key slime-mode-map (kbd "C-M-.") 'next-buffer)))

(require 'paredit)
(require 'paredit-menu)
(add-hook 'lisp-mode-hook 'enable-paredit-mode)

(provide 'setup-lisp)

;;; setup-lisp ends here
