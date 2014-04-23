;;; Huang Bo - https://github.com/huangbop/.emacs.d

;; packages
(require 'package)

(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)

(package-initialize)

(unless (file-exists-p "~/.emacs.d/elpa/archives/melpa")
  (package-refresh-contents))

(setq packages '(ido-vertical-mode
		 flx-ido
		 window-numbering
		 smex
		 egg
		 ace-jump-mode
		 alect-themes))

(dolist (package packages)
  (unless (package-installed-p package)
    (package-install package)))

;; ido 
(ido-mode 1)
(require 'ido-vertical-mode)
(ido-vertical-mode 1)

(require 'flx-ido)
(flx-ido-mode 1)

;; window numbering
(require 'window-numbering)
(window-numbering-mode 1)

;; smex
(require 'smex)
(global-set-key (kbd "M-x") 'smex)

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

;; edit basis
(blink-cursor-mode -1)
(column-number-mode)

;; egg
(require 'egg)
(setq egg-buffer-hide-help-on-start
      '(egg-status-buffer-mode
	egg-log-buffer-mode
	egg-file-log-buffer-mode
	egg-diff-buffer-mode
	egg-commit-buffer-mode))

;; ace
(require 'ace-jump-mode)
(global-set-key (kbd "C-;") 'ace-jump-mode)

;;; init.el ends here
