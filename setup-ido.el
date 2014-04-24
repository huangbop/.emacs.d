
(ido-mode 1)
(ido-everywhere 1)
(setq ido-enable-prefix nil
      ido-enable-flex-matching t
      ido-case-fold nil
      ido-auto-merge-work-directories-length -1
      ido-create-new-buffer 'always
      ido-use-filename-at-point nil
      ido-max-prospects 10
      ido-use-virtual-buffers t)

(require 'ido-ubiquitous)
(ido-ubiquitous-mode 1)

(require 'ido-vertical-mode)
(ido-vertical-mode 1)

(require 'flx-ido)
(flx-ido-mode 1)

;; smex
(require 'smex)
(global-set-key (kbd "M-x") 'smex)

(provide 'setup-ido)

;;; setup-ido.el ends here
