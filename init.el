;;; Huang Bo's emacs configuration
;;; https://github.com/huangbop/.emacs.d

;; ELPA 
(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
(package-initialize)

(unless (file-exists-p "~/.emacs.d/elpa/archives/melpa")
  (package-refresh-contents))

;; Ido vertical mode
(package-install 'ido-vertical-mode)
(ido-mode 1)
(ido-vertical-mode 1)

;;; init.el ends here
