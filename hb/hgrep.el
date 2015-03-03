


(require 'grep)

(declare-function image-get-display-property "image-mode.el" ())
(declare-function image-mode-as-text "image-mode.el" ())

(defgroup hgrep nil
  "Customize hgrep"
  :prefix "hgrep-"
  :group 'grep)

(defcustom hgrep-change-readonly-file nil
  "Non-nil means to enable change read-only files."
  :group 'hgrep
  :type 'boolean)

(defcustom hgrep-auto-save-buffer nil
  "Non-nil means do `save-buffer' automatically while 
`hgrep-finished-edit'."
  :group 'hgrep
  :type 'boolean)

(defvar hgrep-setup-hook nil
  "Hooks to run when setting up hgrep.")
 
(defface hgrep-face
  '((((class color)
      (background dark))
     (:background "SlateGray1" :foreground "Black"))
    (((class color)
      (background light))
     (:background "ForestGreen" :foreground "white"))
    (t
     ()))
  "Face used for the changed text in the grep buffer."
  :group 'hgrep)

(defface hgrep-delete-face
  '((((class color)
      (background dark))
     (:background "SlateGray1" :foreground "pink"))
    (((class color)
      (background light))
     (:background "ForestGreen" :foreground "pink"))
    (t
     ()))
  "Face used for the changed text in the grep buffer."
  :group 'hgrep)

(defface hgrep-file-face
  '((((class color)
      (background dark))
     (:background "gray30" :foreground "white"))
    (((class color)
      (background light))
     (:background "ForestGreen" :foreground "white"))
    (t
     ()))
  "Face used for the changed text in the grep buffer."
  :group 'hgrep)

(defface hgrep-reject-face
  '((((class color)
      (background dark))
     (:foreground "HotPink" :weight bold))
    (((class color)
      (background light))
     (:foreground "Red" :weight bold))
    (t
     ()))
  "Face used for the changed text in the grep buffer."
  :group 'hgrep)


(defface hgrep-done-face
  '((((class color)
      (background dark))
     (:foreground "LightSkyBlue"))
    (((class color)
      (background light))
     (:foreground "Blue"))
    (t
     ()))
  "Face used for the changed text in the grep buffer."
  :group 'hgrep)

(defvar hgrep-readonly-state nil)
(make-variable-buffer-local 'hgrep-readonly-state)

(defvar hgrep-prepared nil)
(make-variable-buffer-local 'hgrep-prepared)

(defvar hgrep-sibling-buffer nil)
(make-variable-buffer-local 'hgrep-sibling-buffer)

(defvar hgrep-original-mode-map nil)
(make-variable-buffer-local 'hgrep-original-mode-map)

(defconst hgrep-default-line-header-regexp
  "^\\(.*?[^/\n]\\)\\(:[ \t]*\\)\\([1-9][0-9]*\\)[ \t]*:")

(defvar hgrep-line-file-regexp hgrep-default-line-header-regexp)

(defvar hgrep-results-parser 'hgrep-parse-command-results)
(defvar hgrep-header/footer-parser 'hgrep-prepare-header/footer)

(defvar hgrep-inhibit-modification-hook nil)

(defvar hgrep-mode-map nil
  "The hgrep mode map")

(unless hgrep-mode-map
  (let ((map (make-sparse-keymap)))
    (define-key map "\C-c\C-c" 'hgrep-finish-edit)
    (setq hgrep-mode-map map)))

;;;###autoload
(defun hgrep-setup ()
  ""
  (hgrep-setup-internal))












