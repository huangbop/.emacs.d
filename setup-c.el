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

(global-set-key (kbd "M-x") 'helm-M-x)
(setq helm-M-x-fuzzy-match t)

(global-set-key (kbd "C-x b") 'helm-mini)
(setq helm-buffers-fuzzy-matching t
      helm-recentf-fuzzy-match t)

(global-set-key (kbd "C-x C-f") 'helm-find-files)

;;; helm gtags
(setq helm-gtags-ignore-case t
      helm-gtags-auto-update t
      helm-gtags-use-input-at-cursor t
      helm-gtags-pulse-at-cursor t
      helm-gtags-prefix-key "\C-cg"
      helm-gtags-suggested-key-mapping t)

(require 'helm-gtags)

(add-hook 'c-mode-hook 'helm-gtags-mode)
(add-hook 'c++-mode-hook 'helm-gtags-mode)
(add-hook 'asm-mode-hook 'helm-gtags-mode)
(add-hook 'dired-mode-hook 'helm-gtags-mode)
(add-hook 'eshell-mode-hook 'helm-gtags-mode)

(define-key helm-gtags-mode-map (kbd "M-.") 'helm-gtags-dwim)
(define-key helm-gtags-mode-map (kbd "M-,") 'helm-gtags-pop-stack)

;;; Semantic
(require 'semantic)

(global-semanticdb-minor-mode 1)
(global-semantic-idle-scheduler-mode 1)

(semantic-mode 1)

;; GUD
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
