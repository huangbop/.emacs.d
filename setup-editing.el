
(defun yank-pop-forward (arg)
  (interactive "p")
  (yank-pop (- arg)))
(global-set-key (kbd "M-Y") 'yank-pop-forward)

;; ace
(require 'ace-jump-mode)
(global-set-key (kbd "C-;") 'ace-jump-mode)

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
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
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

(provide 'setup-editing)

;;; setup-editing ends here
