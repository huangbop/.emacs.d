

;;; Indent
(add-hook 'java-mode-hook (lambda ()
			    (setq c-basic-offset 2)))

;;; jdee
(add-to-list 'load-path "~/.emacs.d/jdee-2.4.1/lisp")
(load "jde")
;;; must set a lower version, this maybe a bug
(add-hook 'jde-mode-hook (lambda ()
			   (setq jde-compiler '("javac")
				 jde-jdk-registry '(("1.5.0" . "d:/java/jdk1.8.0_31"))
				 jde-jdk '("1.5.0"))))


(provide 'setup-java)

;;; setup-java.el ends here
