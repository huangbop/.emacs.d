;;; Huang Bo - https://github.com/huangbop/.emacs.d

;; load path
(add-to-list 'load-path user-emacs-directory)

;; packages
(setq packages '(monokai-theme
		 ido-ubiquitous
		 ido-vertical-mode
		 flx-ido
		 window-numbering
		 smex
		 egg
		 ace-jump-mode
		 smartparens
		 expand-region
		 centered-cursor-mode
		 multiple-cursors
		 auto-complete
		 dired+
		 buffer-move))
(require 'setup-packages)
(install-packages packages)

;; appearance
(require 'setup-appearance)

;; ido
(require 'setup-ido)

;; buffering
(require 'setup-buffering)

;; editing
(require 'setup-editing)

;; egg
(require 'egg)
(setq egg-buffer-hide-help-on-start
      '(egg-status-buffer-mode
	egg-log-buffer-mode
	egg-file-log-buffer-mode
	egg-diff-buffer-mode
	egg-commit-buffer-mode))

;;; init.el ends here
