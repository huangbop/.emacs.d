;;; Huang Bo - https://github.com/huangbop/.emacs.d

;; load path
(add-to-list 'load-path user-emacs-directory)
(add-to-list 'load-path "~/.emacs.d/hb")

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
		 jump-char
		 toggle-quotes
		 ioccur
		 aok
		 wgrep
		 ace-jump-zap
		 occur-x
		 change-inner
		 visible-mark
		 back-button
		 paredit
		 paredit-menu
		 tagedit
		 zencoding-mode
		 adjust-parens
		 evil
                 cider
		 company
		 rainbow-delimiters
		 window-numbering))
(require 'setup-packages)
(install-packages packages)

;;; modules
(defvar modules '(setup-appearance
		  setup-editing
		  setup-ido
		  setup-buffering
		  setup-utilities
		  setup-lisp
		  setup-c
		  setup-python
		  setup-java
		  setup-mark
		  setup-html))

(dolist (mod modules)
  (require mod))


;;; init.el ends here
