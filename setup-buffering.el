
(require 'dired+)

;; window numbering
(require 'window-numbering)
(window-numbering-mode 1)

;;; golden ratio
(require 'golden-ratio)
(global-set-key (kbd "<C-f12>") 'golden-ratio-mode)

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

;; adjust window
(global-set-key (kbd "C-S-<left>") 'enlarge-window-horizontally)
(global-set-key (kbd "C-S-<right>") 'shrink-window-horizontally)
(global-set-key (kbd "C-S-<down>") 'shrink-window)
(global-set-key (kbd "C-S-<up>") 'enlarge-window)

;; jump char
(require 'jump-char)
(global-set-key (kbd "M-o") 'jump-char-forward)
(global-set-key (kbd "M-O") 'jump-char-backward)

;; toggle split
(defun toggle-window-split ()
  (interactive)
  (if (= (count-windows) 2)
      (let* ((this-win-buffer (window-buffer))
             (next-win-buffer (window-buffer (next-window)))
             (this-win-edges (window-edges (selected-window)))
             (next-win-edges (window-edges (next-window)))
             (this-win-2nd (not (and (<= (car this-win-edges)
                                         (car next-win-edges))
                                     (<= (cadr this-win-edges)
                                         (cadr next-win-edges)))))
             (splitter
              (if (= (car this-win-edges)
                     (car (window-edges (next-window))))
                  'split-window-horizontally
                'split-window-vertically)))
        (delete-other-windows)
        (let ((first-win (selected-window)))
          (funcall splitter)
          (if this-win-2nd (other-window 1))
          (set-window-buffer (selected-window) this-win-buffer)
          (set-window-buffer (next-window) next-win-buffer)
          (select-window first-win)
          (if this-win-2nd (other-window 1))))))

(global-set-key (kbd "C-x -") 'toggle-window-split)

;; dired jump
(global-set-key (kbd "C-x j") 'dired-jump)

;; back button
(require 'visible-mark)
(global-visible-mark-mode 1)

(require 'back-button)
(back-button-mode 1)

(provide 'setup-buffering)

;;; setup-buffering ends here
