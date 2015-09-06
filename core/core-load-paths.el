;;; core-load-paths.el --- Hemacs Core File
;;
;; Copyright (c) 2015 Huang Bo
;;
;; Author: Huang Bo <huangbop@gmail.com>
;; URL: https://github.com/huangbop/.emacs.d
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defun add-to-load-path (dir) (add-to-list 'load-path dir))

;; paths
(defconst hemacs-core-directory
  (expand-file-name (concat user-emacs-directory "core/"))
  "Hemacs core directory.")

(defconst user-home-directory
  (expand-file-name "~/")
  "User home directory (~/).")

;; load paths
(mapc 'add-to-load-path
      `(
        ,(concat user-emacs-directory "core/")
         ))
