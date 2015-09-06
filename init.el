;;; init.el --- Emacs Initialization File
;;
;; Copyright (c) 2015 Huang Bo
;;
;; Author: Huang Bo <huangbop@gmail.com>
;; URL: https://github.com/huangbop/.emacs.d
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defconst hemacs-version          "0.103.3" "Hemacs version.")
(defconst hemacs-emacs-min-version   "24.3" "Minimal version of Emacs.")

(defun hemacs/emacs-version-ok ()
  (version<= spacemacs-emacs-min-version emacs-version))

(when (spacemacs/emacs-version-ok)
  (load-file (concat user-emacs-directory "core/core-load-paths.el"))
  (require 'core-hemacs)
  ;; (require 'core-configuration-layer)
  ;; (spacemacs/init)
  ;; (configuration-layer/sync)
  ;; (spacemacs/setup-after-init-hook)
  ;; (spacemacs/maybe-install-dotfile)
  ;; (require 'server)
  ;; (unless (server-running-p) (server-start))
  )
