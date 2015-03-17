;;; Paredit
(require 'paredit)
(require 'paredit-menu)

;;; Adjust parens
(require 'adjust-parens)
(local-set-key (kbd "TAB") 'lisp-indent-adjust-parens)
(local-set-key (kbd "<backtab>") 'lisp-dedent-adjust-parens)

;;; Rainbow
(require 'rainbow-delimiters)

;;; Emacs lisp
(add-hook 'emacs-lisp-mode-hook
	  (lambda ()
	    (rainbow-delimiters-mode)
	    (turn-on-eldoc-mode)
	    (enable-paredit-mode)
	    (adjust-parens-mode)))

;;; Clojure
(require 'cider)
(setq nrepl-log-messages t
      nrepl-hide-special-buffers t)

(add-hook 'clojure-mode-hook
	  (lambda ()
	    (subword-mode)
	    (turn-on-eldoc-mode)
	    (enable-paredit-mode)
	    (adjust-parens-mode)
	    (cider-mode)
	    (rainbow-delimiters-mode)))

(add-hook 'cider-repl-mode-hook
	  (lambda ()
	    (subword-mode)
	    (turn-on-eldoc-mode)
	    (enable-paredit-mode)
	    (adjust-parens-mode)
	    (rainbow-delimiters-mode)))


(provide 'setup-lisp)
;;; setup-lisp ends here
