(global-set-key (kbd "<f1>") 'evil-mode)

(global-linum-mode 1)

;;; Hideshow
(dolist (hook '(c-mode-hook python-mode-hook java-mode-hook))
  (add-hook hook
	    (lambda ()
	      (hs-minor-mode 1)
	      (define-key hs-minor-mode-map (kbd "C-h") 'hs-toggle-hiding)
	      (define-key hs-minor-mode-map (kbd "C-c 9") 'hs-hide-all)
	      (define-key hs-minor-mode-map (kbd "C-c 0") 'hs-show-all))))

;; ;;; flycheck
;; (require 'flycheck)
;; (add-hook 'after-init-hook #'global-flycheck-mode)

;; Company
(require 'company)
(global-company-mode)

;; Yank
(defun yank-pop-forward (arg)
  (interactive "p")
  (yank-pop (- arg)))
(global-set-key (kbd "M-Y") 'yank-pop-forward)

;;; Set backup files directory
(setq backup-directory-alist
      '(("." . "~/.backups")))

;;; disable auto save
(setq auto-save-default nil)

;; ace
(require 'ace-jump-mode)
(global-set-key (kbd "C-;") 'ace-jump-mode)

;; change inner
(require 'change-inner)
(global-set-key (kbd "M-i") 'change-inner)
(global-set-key (kbd "M-I") 'copy-inner)

;; smartparens
(require 'setup-smartparens)

;; expand region
(require 'expand-region)
(global-set-key (kbd "C-0") 'er/expand-region)
(global-set-key (kbd "C-9") 'er/contract-region)

;; centered cursor
(require 'centered-cursor-mode)
(global-centered-cursor-mode 1)

;; multiple cursors
(require 'multiple-cursors)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C->") 'mc/mark-all-like-this)
(global-set-key (kbd "C-S-m") 'mc/skip-to-previous-like-this)
(global-set-key (kbd "C-?") 'mc/skip-to-next-like-this )

;; yasnippet
(require 'yasnippet)
(yas-global-mode 1)
(setq yas-prompt-functions '(yas-completing-prompt yas-ido-prompt))

;; whole line or region
(require 'whole-line-or-region)
(whole-line-or-region-mode 1)

;; move text
(require 'move-text)
(move-text-default-bindings)

;; toggle quotes
(require 'toggle-quotes)
(global-set-key (kbd "C-'") 'toggle-quotes)

;;; wgrep
(require 'wgrep)
(setq wgrep-auto-save-buffer t)	 ; Save buffers when wgrep-finish-edit
(setq wgrep-enable-key "w")


(provide 'setup-editing)
;;; setup-editing ends here
