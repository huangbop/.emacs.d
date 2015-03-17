;;; Paredit
(require 'paredit)
(require 'paredit-menu)

;;; Adjust parens
(require 'adjust-parens)
(local-set-key (kbd "TAB") 'lisp-indent-adjust-parens)
(local-set-key (kbd "<backtab>") 'lisp-dedent-adjust-parens)

;;; Emacs lisp
(add-hook 'emacs-lisp-mode-hook
	  (lambda ()
	    'turn-on-eldoc-mode
	    'enable-paredit-mode
	    'adjust-parens-mode
	    (define-key emacs-lisp-mode-map (kbd "<f1>") 'adjust-parens-mode)))

;;; Clojure
(add-hook 'clojure-mode-hook
	  (lambda ()
	    'enable-paredit-mode
	    'adjust-parens-mode
	    (cider-mode)
	    (define-key clojure-mode-map (kbd "<f1>") 'adjust-parens-mode)))


(provide 'setup-lisp)

;;; setup-lisp ends here
