

(defun toggle-fullscreen ()
  (interactive)
  (set-frame-parameter nil 'fullscreen (if (frame-parameter nil 'fullscreen)
					   nil
					 'fullboth)))
(global-set-key [(meta return)] 'toggle-fullscreen)

;; ascii
(require 'ascii)

;; egg
(require 'egg)
(global-set-key (kbd "C-x v t") 'egg-status-buffer-stash-wip)
(global-set-key (kbd "C-x v s") 'egg-status)
(global-set-key (kbd "C-x v l") 'egg-log)

(provide 'setup-utilities)

;;; setup-utilities.el ends here
