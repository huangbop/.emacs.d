(defun toggle-fullscreen ()
  (interactive)
  (set-frame-parameter nil 'fullscreen (if (frame-parameter nil 'fullscreen)
					   nil
					 'fullboth)))
(global-set-key [(meta return)] 'toggle-fullscreen)

;; ascii
(require 'ascii)

;; Magit
(require 'magit)
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)

;; grep
(global-set-key (kbd "M-s g") 'grep)
(require 'wgrep)

;; occur
(add-hook 'occur-mode-hook 'next-error-follow-minor-mode)
(require 'ioccur)
(global-set-key (kbd "M-s i") 'ioccur)
(require 'aok)
(global-set-key (kbd "M-s a") 'all-occur)
(require 'occur-x)
(add-hook 'occur-mode-hook 'turn-on-occur-x-mode)

;; zap
(autoload 'zap-up-to-char "misc"
  'interactive)
(global-set-key (kbd "M-z") 'zap-up-to-char)

;; webjump
(require 'webjump)
(global-set-key (kbd "C-c w") 'webjump)
(setq webjump-sites
      (append '(("Huang Bo" . "www.huangbop.com"))
	      webjump-sample-sites))

(provide 'setup-utilities)

;;; setup-utilities.el ends here
