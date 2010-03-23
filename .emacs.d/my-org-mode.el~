;;   -*- mode: lisp  -*-
;; .emacs file     Selected entries from ~/.emacs.el
;; file of Charles Cave to run org-mode
;;;;;;;;;;;;;;

(provide 'my-org-mode)

(require 'org-install)

(setq org-log-done 'time)

;; The following lines are always needed.  Choose your own keys.
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

(global-font-lock-mode 1)                      ; for all buffers
;(add-hook 'org-mode-hook 'turn-on-font-lock)  ; Org buffers only

;; GTD-like setup
;(setq org-agenda-files (list "~/org/work.org"
;                             "~/org/school.org" 
;                             "~/org/home.org"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(setq org-refile-targets (quote (("newgtd.org" :maxlevel . 1) 
                                 ("someday.org" :level . 2))))










(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(auto-raise-tool-bar-buttons t t)
 '(auto-resize-tool-bars t t)
 '(calendar-week-start-day 1)
 '(case-fold-search t)
 '(current-language-environment "Latin-1")
 '(default-input-method "latin-1-prefix")
 '(make-backup-files nil)
 '(normal-erase-is-backspace t)
 '(org-agenda-files (quote ("~/stick/org/newgtd.org")))
 '(org-agenda-ndays 7)
 '(org-agenda-repeating-timestamp-show-all nil)
 '(org-agenda-restore-windows-after-quit t)
 '(org-agenda-show-all-dates t)
 '(org-agenda-skip-deadline-if-done t)
 '(org-agenda-skip-scheduled-if-done t)
 '(org-agenda-sorting-strategy (quote ((agenda time-up priority-down tag-up) (todo tag-up))))
 '(org-agenda-start-on-weekday nil)
 '(org-agenda-todo-ignore-deadlines t)
 '(org-agenda-todo-ignore-scheduled t)
 '(org-agenda-todo-ignore-with-date t)
 '(org-agenda-window-setup (quote other-window))
 '(org-deadline-warning-days 7)
 '(org-export-html-style "<link rel=\"stylesheet\" type=\"text/css\" href=\"mystyles.css\">")
 '(org-fast-tag-selection-single-key nil)
 '(org-log-done (quote (done)))
 '(org-refile-targets (quote (("newgtd.org" :maxlevel . 1) ("someday.org" :level . 2))))
 '(org-reverse-note-order nil)
 '(org-tags-column -78)
 '(org-tags-match-list-sublevels nil)
 '(org-time-stamp-rounding-minutes 5)
 '(org-use-fast-todo-selection t)
 '(org-use-tag-inheritance nil)
; '(unify-8859-on-encoding-mode t nil (ucs-tables))
 )

;; Following directory is on my home drive
;(setq load-path (append load-path (list "L:/elisp")))

; Save files in DOS mode
;(setq-default buffer-file-coding-system 'raw-text-dos)

(setq default-major-mode 'text-mode)
(add-hook 'text-mode-hook 'turn-on-auto-fill)

; dont use tabs for indenting
(setq-default indent-tabs-mode nil)
(setq-default tab-width 3)

;; These lines only if org-mode is not part of the X/Emacs distribution.
(autoload 'org-mode "org" "Org mode" t)
(autoload 'org-diary "org" "Diary entries from Org mode")
(autoload 'org-agenda "org" "Multi-file agenda from Org mode" t)
(autoload 'org-store-link "org" "Store a link to the current location" t)
(autoload 'orgtbl-mode "org" "Org tables as a minor mode" t)
(autoload 'turn-on-orgtbl "org" "Org tables as a minor mode")

(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)

(setq org-log-done nil)
(setq org-agenda-include-diary nil)
(setq org-deadline-warning-days 7)
(setq org-timeline-show-empty-dates t)
(setq org-insert-mode-line-in-empty-file t)

;; 2006-05-26  - added following line
(require 'org-install)

(add-to-list 'load-path "L:/elisp/")   
(add-to-list 'load-path "L:/elisp/remember-1.9/")

(autoload 'remember "remember" nil t)
(autoload 'remember-region "remember" nil t)

(setq org-directory "~/orgfiles/")
(setq org-default-notes-file "~/.notes")
(setq remember-annotation-functions '(org-remember-annotation))
(setq remember-handler-functions '(org-remember-handler))
(add-hook 'remember-mode-hook 'org-remember-apply-template)
(define-key global-map "\C-cr" 'org-remember)

;(setq org-remember-templates
;     '(
;      ("Todo"    ?t "* TODO %^{Brief Description} %^g\n%?Added: %U" "~/stick/org/newgtd.org" "Tasks")
;      ("Private" ?p "\n* %^{topic} %T \n%i%?\n" "~/stick/org/privnotes.org")
;      ("Book"    ?b "** %^{Book Title} %t :BOOK: \n%[~/stick/org/book.template]\n" "~/stick/org/journal.org")
;      ))

(define-key global-map [f8] 'remember)
(define-key global-map [f9] 'remember-region)

(setq org-agenda-exporter-settings
      '((ps-number-of-columns 1)
        (ps-landscape-mode t)
        (htmlize-output-type 'css)))

(setq org-agenda-custom-commands
'(

("P" "Projects"   
((tags "PROJECT")))

("H" "Office and Home Lists"
     ((agenda)
          (tags-todo "OFFICE")
          (tags-todo "HOME")
          (tags-todo "COMPUTER")
          (tags-todo "DVD")
          (tags-todo "READING")))

("D" "Daily Action List"
     (
          (agenda "" ((org-agenda-ndays 1)
                      (org-agenda-sorting-strategy
                       (quote ((agenda time-up priority-down tag-up) )))
                      (org-deadline-warning-days 0)
                      ))))
)
)

(defun gtd ()
  (interactive)
  (find-file "~/stick/org/newgtd.org"))
(global-set-key (kbd "C-c g") 'gtd)

(add-hook 'org-agenda-mode-hook 'hl-line-mode)

; org mode start - added 20 Feb 2006
;; The following lines are always needed. Choose your own keys.

(global-set-key "\C-x\C-r" 'prefix-region)
(global-set-key "\C-x\C-l" 'goto-line)
(global-set-key "\C-x\C-y" 'copy-region-as-kill)



;;;;;;;;;;;;;;;
;; http://www.members.optusnet.com.au/~charles57/GTD/remember.html#sec-5.5
; (setq org-directory "~/orgfiles/")
; (setq org-default-notes-file "~/.notes")
; (setq remember-annotation-functions '(org-remember-annotation))
; (setq remember-handler-functions '(org-remember-handler))
; (add-hook 'remember-mode-hook 'org-remember-apply-template)
; (define-key global-map "\C-cr" 'org-remember)
;
;(setq org-remember-templates
;      '(("Todo" ?t "* TODO %? %^g\n %i\n " "F:/GTD/newgtd.org" "Office")
;        ("Journal" ?j "\n* %^{topic} %T \n%i%?\n" "L:journal.org")
;        ("Book" ?b "\n* %^{Book Title} %t :READING: \n%[l:/booktemp.txt]\n" 
;         "L:journal.org")
;        ("Private" ?p "\n* %^{topic} %T \n%i%?\n" "F:/gtd/privnotes.org")
;        ("Contact" ?c "\n* %^{Name} :CONTACT:\n%[l:/contemp.txt]\n" 
;         "F:/gtd/privnotes.org")
;        ))
;
;;;  Mytemplates on the  home computer    
;

(setq org-remember-templates
      '(("Todo"
         ?t
         "* TODO %^{Brief Description} %^g\n%?\nAdded: %U"
         "~/stick/org/newgtd.org"
         "Tasks")
        ("Journal"
         ?j
         "** %^{Head Line} %U %^g\n%i%?"
         "~/stick/org/journal.org")
        ("Clipboard"
         ?c
         "** %^{Head Line} %U %^g\n%c\n%?"
         "~/stick/org/journal.org")
        ("Book"
         ?b
         "** %^{Book Title} %t :BOOK: \n%[~/book.template]\n" 
         "~/GTD/journal.org")
        ("Movie"
         ?m
         "** %^{Movie Title} %t :FILM: \n%[~/stick/org/movie.template]\n" 
         "~/stick/org/journal.org")
        ("Someday"
         ?s
         "** %^{Someday Heading} %U\n%?\n"
         "~/stick/org/someday.org")
        ("Vocabulary"
         ?v
         "** %^{Word?}\n%?\n"
         "~/stick/org/vocabulary.org")
        )
      )






 ;'(org-agenda-files (quote ("~/stick/org/newgtd.org")))
 ;'(org-agenda-ndays 7)
 ;'(org-agenda-repeating-timestamp-show-all nil)
 ;'(org-agenda-restore-windows-after-quit t)
 ;'(org-agenda-show-all-dates t)
 ;'(org-agenda-skip-deadline-if-done t)
 ;'(org-agenda-skip-scheduled-if-done t)
 ;'(org-agenda-sorting-strategy (quote ((agenda time-up priority-down tag-up) (todo tag-up))))
 ;'(org-agenda-start-on-weekday nil)
 ;'(org-agenda-todo-ignore-deadlines t)
 ;'(org-agenda-todo-ignore-scheduled t)
 ;'(org-agenda-todo-ignore-with-date t)
 ;'(org-agenda-window-setup (quote other-window))
 ;'(org-deadline-warning-days 7)
 ;'(org-export-html-style "<link rel=\"stylesheet\" type=\"text/css\" href=\"mystyles.css\">")
 ;'(org-fast-tag-selection-single-key nil)
 ;'(org-log-done (quote (done)))
 ;'(org-refile-targets (quote (("newgtd.org" :maxlevel . 1) ("someday.org" :level . 2))))
 ;'(org-reverse-note-order nil)
 ;'(org-tags-column -78)
 ;'(org-tags-match-list-sublevels nil)
 ;'(org-time-stamp-rounding-minutes 5)
 ;'(org-use-fast-todo-selection t)
 ;'(org-use-tag-inheritance nil)
