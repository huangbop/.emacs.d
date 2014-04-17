;;; init.el --- hb' emacs init file

(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

;; default theme
(load-theme 'huangbop t)

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
  (if (equal system-type 'windows-nt)
      (shell-command "efs.exe")
    (set-frame-parameter nil 'fullscreen (if (frame-parameter nil 'fullscreen)
					     nil
					   'fullboth))))
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

(defun yank-pop-forward (arg)
  (interactive "p")
  (yank-pop (- arg)))
(global-set-key (kbd "M-Y") 'yank-pop-forward)

(ecase system-type
  ('windows-nt
   (set-default-font "Consolas-12"))
  ('gnu/linux
   (set-default-font "Inconsolata-12")))

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

(require 'nlinum)
(global-nlinum-mode)

;; jedi.el
(require 'anything-config)

(add-to-list 'load-path "~/.emacs.d/jedi")
(setq jedi:setup-keys t) ; before require
(require 'jedi)
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

;; ipython
(setq
 python-shell-interpreter "ipython"
 python-shell-interpreter-args ""
 python-shell-prompt-regexp "In \\[[0-9]+\\]: "
 python-shell-prompt-output-regexp "Out\\[[0-9]+\\]: "
 python-shell-completion-setup-code
 "from IPython.core.completerlib import module_completion"
 python-shell-completion-module-string-code
 "';'.join(module_completion('''%s'''))\n"
 python-shell-completion-string-code
 "';'.join(get_ipython().Completer.all_completions('''%s'''))\n")

(if (equal system-type 'windows-nt)
    (setq
     python-shell-interpreter "python"
     python-shell-interpreter-args "-i d:/Python27/Scripts/ipython-script.py"))

;; cscope
(require 'xcscope)
(define-key cscope:map (kbd "C-,") 'cscope-find-this-symbol)
(define-key cscope:map (kbd "C-.") 'cscope-find-global-definition)
(define-key cscope:map (kbd "M-,") 'cscope-find-functions-calling-this-function)
(define-key cscope:map (kbd "M-.") 'cscope-find-called-functions)
(define-key cscope:map (kbd "M-p") 'cscope-prev-symbol)
(define-key cscope:map (kbd "M-n") 'cscope-next-symbol)
(define-key cscope:map (kbd "M-*") 'cscope-pop-mark)

;; use linux c style
(setq c-default-style "linux")

;; GUD
(global-set-key (kbd "<f5>") 'gud-cont)
(global-set-key (kbd "<f7>") 'gud-up)
(global-set-key (kbd "<f8>") 'gud-down)
(global-set-key (kbd "<f9>") 'gud-break)
(global-set-key (kbd "<M-f9>") 'gud-tbreak)
(global-set-key (kbd "<S-f9>") 'gud-remove)
(global-set-key (kbd "<f10>") 'gud-next)
(global-set-key (kbd "<C-f10>") 'gud-until)
(global-set-key (kbd "<S-f10>") 'gud-finish)
(global-set-key (kbd "<f11>") 'gud-step)
(global-set-key (kbd "<f12>") 'gdb-many-windows)

;; magit
(add-to-list 'load-path "~/.emacs.d/magit")
(require 'magit)

;; egg
(add-to-list 'load-path "~/.emacs.d/egg")
(require 'egg)
(setq egg-buffer-hide-help-on-start
      '(egg-status-buffer-mode
	egg-log-buffer-mode
	egg-file-log-buffer-mode
	egg-diff-buffer-mode
	egg-commit-buffer-mode))

;; yasnippet
(require 'dropdown-list)
(setq yas/prompt-functions '(yas/dropdown-prompt
			     yas/ido-prompt
			     yas/completing-prompt))
(require 'yasnippet)
(yas/load-directory "~/.emacs.d/snippets")
(yas/global-mode)

;; tramp on windows
(if (equal system-type 'windows-nt)
    (setq tramp-default-method "plink"))

;; json
(require 'json-mode)

;; django
(require 'python-django)

;; slime
(add-to-list 'load-path "~/.emacs.d/slime-2.4/")
(require 'slime-autoloads)
(ecase system-type
  ('windows-nt
   (setq inferior-lisp-program "D:/SBCL/sbcl.exe"))
  ('gnu/linux
   (setq inferior-lisp-program "/usr/bin/sbcl")))
(setq slime-contribs '(slime-fancy))

;; markdown
(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(if (equal system-type 'windows-nt)
    (setq markdown-command "perl ~/.emacs.d/Markdown.pl"))

;; semantic
(semantic-mode 1)
(global-semantic-idle-summary-mode 1)
(global-semantic-idle-completions-mode 1)
(global-semantic-decoration-mode 1)

;; ecb
(add-to-list 'load-path "~/.emacs.d/ecb/")
(require 'ecb)

;; quick-jump
(require 'quick-jump)
(global-set-key (kbd "C-M-,") 'quick-jump-go-back)
(global-set-key (kbd "C-M-SPC") 'quick-jump-push-marker)
(global-set-key (kbd "C-M-.") 'quick-jump-go-forward)
(global-set-key (kbd "C-M-m") 'quick-jump-clear-all-marker)

;; asm-mode comment for arm
(setq asm-comment-char ?\@)

;;; init.el ends here
