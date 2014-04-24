;;; Huang Bo - https://github.com/huangbop/.emacs.d

;; path
(add-to-list 'load-path user-emacs-directory)

;; packages
(require 'package)

(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)

(package-initialize)

(unless (file-exists-p "~/.emacs.d/elpa/archives/melpa")
  (package-refresh-contents))

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
		 multiple-cursors))

(dolist (package packages)
  (unless (package-installed-p package)
    (package-install package)))

;; theme
(load-theme 'monokai t)

;; ido 
(ido-mode 1)
(ido-everywhere 1)
(setq ido-enable-prefix nil
      ido-enable-flex-matching t
      ido-case-fold nil
      ido-auto-merge-work-directories-length -1
      ido-create-new-buffer 'always
      ido-use-filename-at-point nil
      ido-max-prospects 10)

(require 'ido-ubiquitous)
(ido-ubiquitous-mode 1)

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

(set-fringe-mode -1)

;; edit basis
(blink-cursor-mode -1)
(column-number-mode)

(set-default-font "Courier New-11")

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

;;; init.el ends here
