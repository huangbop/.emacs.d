

(defun yank-pop-forward (arg)
  (interactive "p")
  (yank-pop (- arg)))
(global-set-key (kbd "M-Y") 'yank-pop-forward)

;; ace
(require 'ace-jump-mode)
(global-set-key (kbd "C-;") 'ace-jump-mode)

;; smartparens
(require 'setup-smartparens)

;; hideif
(add-hook 'c-mode-hook (lambda () 
			 (hide-ifdef-mode 1)
			 (define-key hide-ifdef-mode-map (kbd "M-(") 'hide-ifdef-block)
			 (define-key hide-ifdef-mode-map (kbd "M-)") 'show-ifdef-block)))

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

;; auto complete
(require 'auto-complete-config)
(ac-config-default)
(setq ac-auto-start nil)
(ac-set-trigger-key "TAB")

;; yasnippet
(require 'yasnippet)
(yas-global-mode 1)

;; whole line or region
(require 'whole-line-or-region)
(whole-line-or-region-mode 1)

;; move text
(require 'move-text)
(move-text-default-bindings)

;; toggle quotes
(require 'toggle-quotes)
(global-set-key (kbd "C-'") 'toggle-quotes)

(provide 'setup-editing)

;;; setup-editing ends here
