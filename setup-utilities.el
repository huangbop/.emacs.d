

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
;; (setq egg-buffer-hide-help-on-start
;;       '(egg-status-buffer-mode
;; 	egg-log-buffer-mode
;; 	egg-file-log-buffer-mode
;; 	egg-diff-buffer-mode
;; 	egg-commit-buffer-mode))

(provide 'setup-utilities)

;;; setup-utilities.el ends here
