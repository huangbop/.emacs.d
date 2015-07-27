;;; json
(require 'json-mode)
(add-hook 'js-mode-hook (lambda ()
			  (setq js-indent-level 2)))

(require 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'interpreter-mode-alist '("node" . js2-mode))

(require 'js-comint)
(setq inferior-js-program-command "node --interactive")
(add-hook 'js2-mode-hook '(lambda ()
			    (setq js2-basic-offset 2)
			    (local-set-key (kbd "C-c C-p") 'run-js)
			    (local-set-key "\C-x\C-e" 'js-send-last-sexp)
			    (local-set-key "\C-\M-x" 'js-send-last-sexp-and-go)
			    (local-set-key "\C-c\C-b" 'js-send-buffer)
			    (local-set-key "\C-cl" 'js-load-file-and-go)
			    ))

;;; web beautify
(require 'web-beautify)
(eval-after-load 'js2-mode
  '(define-key js2-mode-map (kbd "C-c b") 'web-beautify-js))

(eval-after-load 'json-mode
  '(define-key json-mode-map (kbd "C-c b") 'web-beautify-js))

(eval-after-load 'sgml-mode
  '(define-key html-mode-map (kbd "C-c b") 'web-beautify-html))

(eval-after-load 'css-mode
  '(define-key css-mode-map (kbd "C-c b") 'web-beautify-css))

;;; tern
(require 'tern)
(setq tern-command (cons (executable-find "tern") '()))
(add-hook 'js2-mode-hook (lambda () (tern-mode t)))

(require 'company-tern)
(add-to-list 'company-backends 'company-tern)

;;; 
(provide 'setup-javascript)
;;; setup-javascript.el ends here
