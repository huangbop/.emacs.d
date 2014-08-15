
(require 'dired+)

;; window numbering
(require 'window-numbering)
(window-numbering-mode 1)

;; winner
(winner-mode 1)

;; buffer move
(require 'buffer-move)
(global-set-key (kbd "<M-S-up>")     'buf-move-up)
(global-set-key (kbd "<M-S-down>")   'buf-move-down)
(global-set-key (kbd "<M-S-left>")   'buf-move-left)
(global-set-key (kbd "<M-S-right>")  'buf-move-right)

;; buffer circle
(global-set-key (kbd "C-M-,") 'previous-buffer)
(global-set-key (kbd "C-M-.") 'next-buffer)

;; register jump
(global-set-key (kbd "M-S-SPC") 'point-to-register)
(global-set-key (kbd "M-J") 'jump-to-register)

;; adjust window
(global-set-key (kbd "C-S-<left>") 'enlarge-window-horizontally)
(global-set-key (kbd "C-S-<right>") 'shrink-window-horizontally)
(global-set-key (kbd "C-S-<down>") 'shrink-window)
(global-set-key (kbd "C-S-<up>") 'enlarge-window)

(provide 'setup-buffering)

;;; setup-buffering ends here
