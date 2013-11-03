;;; init.el --- hb' emacs init file

(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

;; theme
(load-theme 'zenburn t)

;; auto-complete
(add-to-list 'load-path "~/.emacs.d/auto-complete")
(require 'auto-complete)
(add-to-list 'ac-dictionary-directories
	     "~/.emacs.d/auto-complete/ac-dict")
(require 'auto-complete-config)
(ac-config-default)
(setq ac-auto-start nil)
(ac-set-trigger-key "TAB")

;; buffer behaviors
(require 'window-numbering)
(window-numbering-mode)

(winner-mode t)

(global-set-key (kbd "C-S-<left>") 'enlarge-window-horizontally)
(global-set-key (kbd "C-S-<right>") 'shrink-window-horizontally)
(global-set-key (kbd "C-S-<down>") 'shrink-window)
(global-set-key (kbd "C-S-<up>") 'enlarge-window)

(require 'buffer-move)
(global-set-key (kbd "M-S-<left>") 'buf-move-left)
(global-set-key (kbd "M-S-<right>") 'buf-move-right)
(global-set-key (kbd "M-S-<up>") 'buf-move-up)
(global-set-key (kbd "M-S-<down>") 'buf-move-down)

;; gui frames
(setq use-file-dialog nil)
(setq use-dialog-box nil)
(setq inhibit-startup-screen t)
(setq inhibit-startup-echo-area-message t)

(set-fringe-mode 0)
(setq indicate-empty-lines t)

(menu-bar-mode -1)
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
(when (fboundp 'set-scroll-bar-mode)
  (set-scroll-bar-mode nil))

(defun toggle-fullscreen ()
  (interactive)
  (set-frame-parameter nil 'fullscreen (if (frame-parameter nil 'fullscreen)
                                           nil
					 'fullboth)))
(global-set-key [(meta return)] 'toggle-fullscreen)

;; dired+
(require 'dired+)

;; ido
(ido-mode t)
(ido-everywhere t)
(setq ido-enable-flex-matching t)
(setq ido-use-filename-at-point nil)
(setq ido-auto-merge-work-directories-length 0)
(setq ido-use-virtual-buffers t)

(require 'ido-ubiquitous)
(ido-ubiquitous-mode t)

;; smex
(require 'smex)
(global-set-key (kbd "M-x") 'smex)

;; editing utils
(blink-cursor-mode -1)

(electric-pair-mode 1)

(column-number-mode)

(setq-default truncate-lines t)
(setq truncate-partial-width-windows nil)

(ecase system-type
  ('windows-nt
   (set-default-font "Courier New-13"))
  ('gnu/linux
   (set-default-font "Monospace-11")))
  
(require 'whole-line-or-region)
(whole-line-or-region-mode)

(require 'mic-paren)
(paren-activate)

(add-to-list 'load-path "~/.emacs.d/expand-region")
(require 'expand-region)
(global-set-key (kbd "C--") 'er/expand-region)

(add-to-list 'load-path "~/.emacs.d/multiple-cursors")
(require 'multiple-cursors)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-S-M") 'mc/skip-to-previous-like-this)
(global-set-key (kbd "C-?") 'mc/skip-to-next-like-this )

(require 'ace-jump-mode)
(global-set-key (kbd "C-;") 'ace-jump-mode)

(require 'fill-column-indicator)
(define-globalized-minor-mode global-fci-mode fci-mode (lambda () (fci-mode 1)))
(setq-default fci-rule-column 80)

(require 'move-text)
(move-text-default-bindings)

(require 'linum)
(global-linum-mode)

;; jedi.el
(require 'anything-config)

(add-to-list 'load-path "~/.emacs.d/jedi")
(setq jedi:setup-keys t) ; before require
(require 'jedi)
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

;; cscope
(when (equal system-type 'windows-nt)
  (require 'xcscope)
  (define-key cscope:map (kbd "C-,") 'cscope-find-this-symbol)
  (define-key cscope:map (kbd "C-.") 'cscope-find-global-definition)
  (define-key cscope:map (kbd "M-,") 'cscope-find-functions-calling-this-function)
  (define-key cscope:map (kbd "M-.") 'cscope-find-called-functions)
  (define-key cscope:map (kbd "M-p") 'cscope-prev-symbol)
  (define-key cscope:map (kbd "M-n") 'cscope-next-symbol)
  (define-key cscope:map (kbd "M-*") 'cscope-pop-mark))

;; c style
(setq c-default-style "linux"
      c-basic-offset 4)

;; magit
(add-to-list 'load-path "~/.emacs.d/magit")
(require 'magit)

;; egg
(add-to-list 'load-path "~/.emacs.d/egg")
(require 'egg)

;; yasnippet
(require 'dropdown-list)
(setq yas/prompt-functions '(yas/dropdown-prompt
			     yas/ido-prompt
			     yas/completing-prompt))
(require 'yasnippet)
(yas/load-directory "~/.emacs.d/snippets")
(yas/global-mode)


;;; init.el ends here
