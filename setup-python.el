;;; jedi
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t
      jedi:use-shortcuts t)

(eval-after-load "python"
  '(define-key python-mode-map "\C-cx" 'jedi-direx:pop-to-buffer))
(add-hook 'jedi-mode-hook 'jedi-direx:setup)

;;; pyvenv
(require 'pyvenv)
(add-hook 'python-mode-hook '(lambda () (pyvenv-mode 1)))

;;; ipython
(setq
 python-shell-interpreter "ipython"
 python-shell-interpreter-args ""
 python-shell-prompt-regexp "In \\[[0-9]+\\]: "
 python-shell-prompt-output-regexp "Out\\[[0-9]+\\]: "
 python-shell-completion-setup-code
 "from IPython.core.completerlib import module_completion"
 python-shell-completion-module-string-code
 "';'.join(module_completion('''%s'''))\n"
 python-shell-completion-string-code
 "';'.join(get_ipython().Completer.all_completions('''%s'''))\n")

;;; debug
(setq gud-pdb-command-name "python -m pdb")

;;; company
(require 'company-jedi)
(add-to-list 'company-backends 'company-jedi)

;;; 
(provide 'setup-python)
;;;
