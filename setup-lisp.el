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
	    (turn-on-eldoc-mode)
	    (enable-paredit-mode)
	    (adjust-parens-mode)))

;;; Clojure
(require 'cider)
(add-hook 'cider-mode-hook #'eldoc-mode)
(setq nrepl-log-messages t
      nrepl-hide-special-buffers t)

(add-hook 'clojure-mode-hook
	  (lambda ()
	    (enable-paredit-mode)
	    (adjust-parens-mode)
	    (cider-mode)))


(provide 'setup-lisp)
;;; setup-lisp ends here
