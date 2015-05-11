(setq c-default-style "linux")

;; hideif
(add-hook 'c-mode-hook
	  (lambda () (hide-ifdef-mode 1)
	    (define-key hide-ifdef-mode-map (kbd "M-(") 'hide-ifdef-block)
	    (define-key hide-ifdef-mode-map (kbd "M-)") 'show-ifdef-block)))

;;; Helm
(require 'helm)
(require 'helm-config)
(helm-mode 1)

;; semantic
(semantic-mode 1)
(global-semantic-idle-summary-mode 1)

;; gud
(global-set-key (kbd "<f5>") 'gud-cont)
(global-set-key (kbd "<f7>") 'gud-up)
(global-set-key (kbd "<f8>") 'gud-down)
(global-set-key (kbd "<f9>") 'gud-break)
(global-set-key (kbd "<M-f9>") 'gud-tbreak)
(global-set-key (kbd "<S-f9>") 'gud-remove)
(global-set-key (kbd "<f10>") 'gud-next)
(global-set-key (kbd "<C-f10>") 'gud-until)
(global-set-key (kbd "<f11>") 'gud-step)
(global-set-key (kbd "<S-f11>") 'gud-finish)
(global-set-key (kbd "<f12>") 'gdb-many-windows)


(provide 'setup-c)
;;; setup-c.el ends here
