
(require 'package)

(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)

(package-initialize)

(unless (file-exists-p "~/.emacs.d/elpa/archives/melpa")
  (package-refresh-contents))

(defun install-packages (packages)
  (dolist (package packages)
    (unless (package-installed-p package)
      (package-install package))))

(provide 'setup-packages)

;;; setup-packages.el ends here
