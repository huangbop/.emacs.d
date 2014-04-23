;;; Huang Bo's emacs configuration
;;; https://github.com/huangbop/.emacs.d

;; elpa
(require 'package)

(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)

(package-initialize)

(unless (file-exists-p "~/.emacs.d/elpa/archives/melpa")
  (package-refresh-contents))

;; ido 
(ido-mode 1)

(package-install 'ido-vertical-mode)
(require 'ido-vertical-mode)
(ido-vertical-mode 1)

(package-install 'flx-ido)
(require 'flx-ido)
(flx-ido-mode 1)

;; window numbering
(package-install 'window-numbering)
(require 'window-numbering)
(window-numbering-mode 1)

;; smex
(package-install 'smex)
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
(package-install 'egg)
(require 'egg)

;;; init.el ends here
