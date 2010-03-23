;; Enable a backtrace when problems occur
;(setq debug-on-error t)

;; Load paths
(add-to-list 'load-path (expand-file-name "~/.emacs.d"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp/remember"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp/epg"))
(add-to-list 'load-path "~/.emacs.d/lisp/org-6.32b/lisp")
(add-to-list 'load-path "~/.emacs.d/lisp/org-6.32b/contrib/lisp")
(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp/ess-5.5/lisp"))

;; Personal customizations
(require 'my-generic)
(require 'my-haskell-mode)
;(require 'my-org-mode)
(require 'my-org-mode2)
(require 'my-easypg-mode)
(require 'my-remember-mode)
;(require 'my-icicles-mode)
;(require 'my-jabber-mode)
;(require 'my-w3m-mode)
;(require 'my-erc-mode)
(require 'my-auto-complete-mode)

; ESS mode for GNU R
(require 'ess-site)

;; (custom-set-variables
;;   custom-set-variables was added by Custom.
;;   If you edit it by hand, you could mess it up, so be careful.
;;   Your init file should contain only one such instance.
;;   If there is more than one, they won't work right.
;;  '(column-number-mode t)

;;  '(haskell-doc-show-global-types t)
;;  '(haskell-mode-hook (quote (turn-on-haskell-indent turn-on-font-lock turn-on-eldoc-mode imenu-add-menubar-index turn-on-haskell-doc-mode turn-on-haskell-decl-scan turn-on-font-lock)))
;;  '(inferior-haskell-wait-and-jump t)
;;  '(mouse-yank-at-point t)
;;  '(nil nil t)
;;  '(org-agenda-custom-commands (quote (("d" todo "DELEGATED" nil) ("c" todo "DONE|DEFERRED|CANCELLED" nil) ("w" todo "WAITING" nil) ("W" agenda "" ((org-agenda-ndays 21))) ("A" agenda "" ((org-agenda-skip-function (lambda nil (org-agenda-skip-entry-if (quote notregexp) "\\=.*\\[#A\\]"))) (org-agenda-ndays 1) (org-agenda-overriding-header "Today's Priority #A tasks: "))) ("u" alltodo "" ((org-agenda-skip-function (lambda nil (org-agenda-skip-entry-if (quote scheduled) (quote deadline) (quote regexp) "<[^>
;; ]+>"))) (org-agenda-overriding-header "Unscheduled TODO entries: "))))))
;;  '(org-agenda-files (quote ("~/stick/org/todo.org" "~/stick/org/someday.org")))
;;  '(org-agenda-ndays 7)
;;  '(org-agenda-restore-windows-after-quit t)
;;  '(org-agenda-show-all-dates nil)
;;  '(org-agenda-skip-deadline-if-done t)
;;  '(org-agenda-skip-scheduled-if-done t)
;;  '(org-agenda-start-on-weekday nil)
;;  '(org-deadline-warning-days 14)
;;  '(org-default-notes-file "~/stick/org/notes.org")
;;  '(org-directory "~/stick/org/")
;;  '(org-fast-tag-selection-single-key nil)
;;  '(org-remember-store-without-prompt t)
;;  '(org-remember-templates (quote (("Todo" 116 "* TODO %^{Brief Description} %^g
;; %?
;; Added: %U" "~/stick/org/todo.org" "Tasks") ("Journal" 106 "** %^{Head Line} %U %^g
;; %i%?" "~/stick/org/journal.org") ("Clipboard" 99 "** %^{Head Line} %U %^g
;; %c
;; %?" "~/stick/org/journal.org") ("Book" 98 "** %^{Book Title} %t :BOOK: 
;; %[~/book.template]
;; " "~/GTD/journal.org") ("Movie" 109 "** %^{Movie Title} %t :FILM: 
;; %[~/stick/org/movie.template]
;; " "~/stick/org/journal.org") ("Someday" 115 "** %^{Someday Heading} %U
;; %?
;; " "~/stick/org/someday.org") ("Vocabulary" 118 "** %^{Word?}
;; %?
;; " "~/stick/org/vocabulary.org"))))
;;  '(org-reverse-note-order t)
;;  '(org-tags-match-list-sublevels nil)
;;  '(remember-annotation-functions (quote (org-remember-annotation)))
;;  '(remember-handler-functions (quote (org-remember-handler)))
;;  '(scroll-bar-mode nil)
;;  '(setq org-log-done)
;;  '(show-paren-mode t)
;;  '(size-indication-mode t)
;;  '(text-mode-hook (quote (turn-on-auto-fill text-mode-hook-identify)))
;;  '(tool-bar-mode nil))
;; (custom-set-faces
;;   custom-set-faces was added by Custom.
;;   If you edit it by hand, you could mess it up, so be careful.
;;   Your init file should contain only one such instance.
;;   If there is more than one, they won't work right.
;;  '(default ((t (:inherit nil :stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 140 :width normal :foundry "unknown")))))
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(haskell-doc-show-global-types t)
 '(haskell-mode-hook (quote (turn-on-haskell-indent turn-on-font-lock turn-on-eldoc-mode imenu-add-menubar-index turn-on-haskell-doc-mode turn-on-haskell-decl-scan turn-on-font-lock)))
 '(inferior-haskell-wait-and-jump t)
 '(mouse-yank-at-point t)
 '(nil nil t)
 '(normal-erase-is-backspace t)
 '(org-agenda-custom-commands (quote (("d" todo "DELEGATED" nil) ("c" todo "DONE|DEFERRED|CANCELLED" nil) ("w" todo "WAITING" nil) ("W" agenda "" ((org-agenda-ndays 21))) ("A" agenda "" ((org-agenda-skip-function (lambda nil (org-agenda-skip-entry-if (quote notregexp) "\\=.*\\[#A\\]"))) (org-agenda-ndays 1) (org-agenda-overriding-header "Today's Priority #A tasks: "))) ("u" alltodo "" ((org-agenda-skip-function (lambda nil (org-agenda-skip-entry-if (quote scheduled) (quote deadline) (quote regexp) "<[^>
]+>"))) (org-agenda-overriding-header "Unscheduled TODO entries: "))))))
 '(org-agenda-files (quote ("~/stick/org/todo.org" "~/stick/org/someday.org")))
 '(org-agenda-ndays 7)
 '(org-agenda-restore-windows-after-quit t)
 '(org-agenda-show-all-dates nil)
 '(org-agenda-skip-deadline-if-done t)
 '(org-agenda-skip-scheduled-if-done t)
 '(org-agenda-start-on-weekday nil)
 '(org-deadline-warning-days 14)
 '(org-default-notes-file "~/stick/org/notes.org")
 '(org-directory "~/stick/org/")
 '(org-fast-tag-selection-single-key nil)
 '(org-remember-store-without-prompt t)
 '(org-remember-templates (quote (("Todo" 116 "* TODO %^{Brief Description} %^g
%?
Added: %U" "~/stick/org/todo.org" "Tasks") ("Journal" 106 "** %^{Head Line} %U %^g
%i%?" "~/stick/org/journal.org") ("Clipboard" 99 "** %^{Head Line} %U %^g
%c
%?" "~/stick/org/journal.org") ("Book" 98 "** %^{Book Title} %t :BOOK: 
%[~/book.template]
" "~/GTD/journal.org") ("Movie" 109 "** %^{Movie Title} %t :FILM: 
%[~/stick/org/movie.template]
" "~/stick/org/journal.org") ("Someday" 115 "** %^{Someday Heading} %U
%?
" "~/stick/org/someday.org") ("Vocabulary" 118 "** %^{Word?}
%?
" "~/stick/org/vocabulary.org"))))
 '(org-reverse-note-order t)
 '(org-tags-match-list-sublevels nil)
 '(remember-annotation-functions (quote (org-remember-annotation)))
 '(remember-handler-functions (quote (org-remember-handler)))
 '(scroll-bar-mode nil)
 '(setq org-log-done)
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(text-mode-hook (quote (turn-on-auto-fill text-mode-hook-identify)))
 '(tool-bar-mode nil))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 140 :width normal :foundry "unknown")))))
