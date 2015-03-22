(require 'js3-mode)
(setq js3-auto-indent-p t
      js3-enter-indents-newline t
      js3-indent-on-enter-key t)

(require 'js-comint)
(setq inferior-js-program-command "node --interactive")
(add-hook 'js3-mode-hook '(lambda ()
			    (local-set-key (kbd "C-c C-p") 'run-js)
			    (local-set-key "\C-x\C-e" 'js-send-last-sexp)
			    (local-set-key "\C-\M-x" 'js-send-last-sexp-and-go)
			    (local-set-key "\C-cb" 'js-send-buffer)
			    (local-set-key "\C-c\C-b" 'js-send-buffer-and-go)
			    (local-set-key "\C-cl" 'js-load-file-and-go)
			    ))


(provide 'setup-javascript)
;;; setup-javascript.el ends here
