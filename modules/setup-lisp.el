;;; Paredit
(require 'paredit)
(require 'paredit-menu)
(add-hook 'lisp-mode-hook #'paredit-mode)
(add-hook 'emacs-lisp-mode-hook #'paredit-mode)
(add-hook 'clojure-mode-hook #'paredit-mode)
(add-hook 'cider-repl-mode-hook #'paredit-mode)

;;; Adjust parens
(require 'adjust-parens)
(local-set-key (kbd "TAB") 'lisp-indent-adjust-parens)
(local-set-key (kbd "<backtab>") 'lisp-dedent-adjust-parens)
(add-hook 'lisp-mode-hook #'adjust-parens-mode)
(add-hook 'emacs-lisp-mode-hook #'adjust-parens-mode)
(add-hook 'clojure-mode-hook #'adjust-parens-mode)
(add-hook 'cider-repl-mode-hook #'adjust-parens-mode)

;;; Rainbow
(require 'rainbow-delimiters)
(add-hook 'lisp-mode-hook #'rainbow-delimiters-mode)
(add-hook 'emacs-lisp-mode-hook #'rainbow-delimiters-mode)
(add-hook 'clojure-mode-hook #'rainbow-delimiters-mode)
(add-hook 'cider-repl-mode-hook #'rainbow-delimiters-mode)

;;; highlight s-expression
(require 'hl-sexp)
(add-hook 'lisp-mode-hook #'hl-sexp-mode)
(add-hook 'emacs-lisp-mode-hook #'hl-sexp-mode)
(add-hook 'clojure-mode-hook #'hl-sexp-mode)

;;; flycheck for clojure
(require 'let-alist)
(require 'flycheck-clojure)
(eval-after-load 'flycheck '(flycheck-clojure-setup))

;;; flycheck pos tip
(require 'flycheck-pos-tip)
(eval-after-load 'flycheck
  '(setq flycheck-display-errors-function #'flycheck-pos-tip-error-messages))

;;; eldoc mode
(add-hook 'lisp-mode-hook #'eldoc-mode)
(add-hook 'emacs-lisp-mode-hook #'eldoc-mode)
(add-hook 'clojure-mode-hook #'eldoc-mode)
(add-hook 'cider-repl-mode-hook #'eldoc-mode)

;;; clojure cider
(require 'cider)
(add-hook 'clojure-mode-hook #'cider-mode)
;; REPL history file
(setq cider-repl-history-file "~/.emacs.d/cider-history"
      ;; nice pretty printing
      cider-repl-use-pretty-printing t
      ;; nicer font lock in REPL
      cider-repl-use-clojure-font-lock t
      ;; result prefix for the REPL
      cider-repl-result-prefix ";; => "
      ;; never ending REPL history
      cider-repl-wrap-history t
      ;; looong history
      cider-repl-history-size 3000
      ;; error buffer not popping up
      cider-show-error-buffer nil)

;;; clojure refactor
(require 'clj-refactor)
(add-hook 'clojure-mode-hook
	  (lambda ()
	    (clj-refactor-mode 1)
	    ;; insert keybinding setup here
	    (cljr-add-keybindings-with-prefix "C-c RET")))

;;; 
(provide 'setup-lisp)
;;; setup-lisp ends here
