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
		 jump-char
		 toggle-quotes
		 ioccur
		 aok
		 wgrep
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
		 clojure-mode
		 cider
		 company
		 rainbow-delimiters
		 js2-mode
		 js-comint
		 flycheck
		 web-beautify
		 tern
		 company-tern
		 flycheck-clojure
		 let-alist
		 hl-sexp
		 clj-refactor
		 flycheck-pos-tip
		 json-mode
		 company-jedi
		 ggtags
		 sr-speedbar
		 helm
		 helm-gtags
		 company-c-headers
		 helm-projectile
		 window-numbering))

(require 'setup-packages)
(install-packages packages)

;;; modules
(defvar modules '(setup-appearance
		  setup-editing
		  setup-buffering
		  setup-utilities
		  setup-lisp
		  setup-c
		  setup-python
		  setup-java
		  setup-mark
		  setup-javascript
		  setup-html))

(dolist (mod modules)
  (require mod))


;;; init.el ends here
