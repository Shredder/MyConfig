(provide 'my-remember-mode)

;; remember-mode
(add-to-list 'load-path "~/.emacs.d/lisp/remember-2.0")
(require 'remember)
(setq remember-annotation-functions '(org-remember-annotation))
(setq remember-handler-functions '(org-remember-handler))
(add-hook 'remember-mode-hook 'org-remember-apply-template)
;(setq org-directory "~/orgfiles/")
;(setq org-default-notes-file "~/.notes")
(define-key global-map "\C-cr" 'org-remember)
