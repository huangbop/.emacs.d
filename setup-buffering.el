
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

(provide 'setup-buffering)

;;; setup-buffering ends here
