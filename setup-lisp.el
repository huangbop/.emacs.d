(add-hook 'emacs-lisp-mode-hook 'turn-on-eldoc-mode)

;; slime
(require 'slime-autoloads)
(setq inferior-lisp-program "sbcl")
(setq slime-contribs '(slime-fancy))

(add-hook 'slime-mode-hook 
	  (lambda ()
		  (define-key slime-mode-map (kbd "C-M-,") 'previous-buffer)
		  (define-key slime-mode-map (kbd "C-M-.") 'next-buffer)))


;;; paredit
(require 'paredit)
(require 'paredit-menu)
(add-hook 'lisp-mode-hook 'enable-paredit-mode)
(add-hook 'emacs-lisp-mode-hook 'enable-paredit-mode)
(add-hook 'slime-repl-mode-hook 'enable-paredit-mode)


;;; adjust parens
(require 'adjust-parens)
(add-hook 'emacs-lisp-mode-hook #'adjust-parens-mode)
(add-hook 'clojure-mode-hook #'adjust-parens-mode)

(local-set-key (kbd "TAB") 'lisp-indent-adjust-parens)
(local-set-key (kbd "<backtab>") 'lisp-dedent-adjust-parens)



(provide 'setup-lisp)

;;; setup-lisp ends here
