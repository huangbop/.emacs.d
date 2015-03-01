
;; theme
(load-theme 'monokai t)

;; frame basis
(setq use-file-dialog nil)
(setq use-dialog-box nil)
(setq inhibit-startup-screen t)
(setq inhibit-startup-echo-area-message t)

(menu-bar-mode -1)
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
(when (fboundp 'set-scroll-bar-mode)
  (set-scroll-bar-mode nil))

(set-fringe-mode -1)

(blink-cursor-mode -1)
(column-number-mode)

(set-default-font "Consolas-12")

(set-default 'truncate-lines t)
(setq truncate-partial-width-windows nil)

(provide 'setup-appearance)

;;; setup-appearance.el ends here
