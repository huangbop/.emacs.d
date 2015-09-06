;;; core-hemacs.el --- Hemacs Core File
;;
;; Copyright (c) 2015 Huang Bo
;;
;; Author: Huang Bo <huangbop@gmail.com>
;; URL: https://github.com/huangbop/.emacs.d
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(setq message-log-max 16384)
(defconst emacs-start-time (current-time))

(require 'core-themes)

(provide 'core-hemacs)
