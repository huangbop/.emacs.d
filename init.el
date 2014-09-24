;;; Huang Bo - https://github.com/huangbop/.emacs.d

;; load path
(add-to-list 'load-path user-emacs-directory)

;; packages
(setq packages '(monokai-theme
		 ido-ubiquitous
		 ido-vertical-mode
		 flx-ido
		 smex
		 egg
		 ace-jump-mode
		 smartparens
		 expand-region
		 centered-cursor-mode
		 multiple-cursors
		 auto-complete
		 dired+
		 buffer-move
		 yasnippet
		 slime
		 whole-line-or-region
		 move-text
		 markdown-mode
		 jedi
		 jedi-direx
		 ascii
		 window-numbering))
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

;; utilities
(require 'setup-utilities)

;; lisp
(require 'setup-lisp)

;; c
(require 'setup-c)

;; python
(require 'setup-python)

;; mark
(require 'setup-mark)

;;; init.el ends here
