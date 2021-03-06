;;; http://www.newartisans.com/2007/08/using-org-mode-as-a-day-planner.html

(require 'org-install)

(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

(define-key mode-specific-map [?a] 'org-agenda)

(eval-after-load "org"
  '(progn
     (define-prefix-command 'org-todo-state-map)

     (define-key org-mode-map "\C-cx" 'org-todo-state-map)

     (define-key org-todo-state-map "x"
       #'(lambda nil (interactive) (org-todo "CANCELLED")))
     (define-key org-todo-state-map "d"
       #'(lambda nil (interactive) (org-todo "DONE")))
     (define-key org-todo-state-map "f"
       #'(lambda nil (interactive) (org-todo "DEFERRED")))
     (define-key org-todo-state-map "l"
       #'(lambda nil (interactive) (org-todo "DELEGATED")))
     (define-key org-todo-state-map "s"
       #'(lambda nil (interactive) (org-todo "STARTED")))
     (define-key org-todo-state-map "w"
       #'(lambda nil (interactive) (org-todo "WAITING")))
     ))

(eval-after-load "org-agenda"
  '(progn
     (define-key org-agenda-mode-map "\C-n" 'next-line)
     (define-key org-agenda-keymap "\C-n" 'next-line)
     (define-key org-agenda-mode-map "\C-p" 'previous-line)
     (define-key org-agenda-keymap "\C-p" 'previous-line)
     ))

(add-to-list 'load-path "~/.emacs.d/lisp/remember-2.0")
(require 'remember)

(add-hook 'remember-mode-hook 'org-remember-apply-template)

(define-key global-map [(control meta ?r)] 'remember)

(custom-set-variables
 '(org-agenda-files (quote ("~/stick/org/todo.org" "~/stick/org/someday.org")))
 '(org-default-notes-file "~/stick/org/notes.org")
 '(org-directory "~/stick/org/")
 '(org-agenda-ndays 7)
 '(org-deadline-warning-days 14)
 '(org-agenda-show-all-dates t)
 '(org-agenda-skip-deadline-if-done t)
 '(org-agenda-skip-scheduled-if-done t)
 '(org-agenda-start-on-weekday nil)
 '(org-reverse-note-order t)
 '(org-fast-tag-selection-single-key (quote expert))
 '(org-agenda-custom-commands
   (quote (("d" todo "DELEGATED" nil)
           ("c" todo "DONE|DEFERRED|CANCELLED" nil)
           ("w" todo "WAITING" nil)
           ("W" agenda "" ((org-agenda-ndays 21)))
           ("A" agenda ""
            ((org-agenda-skip-function
              (lambda nil
                (org-agenda-skip-entry-if (quote notregexp) "\\=.*\\[#A\\]")))
             (org-agenda-ndays 1)
             (org-agenda-overriding-header "Today's Priority #A tasks: ")))
           ("u" alltodo ""
            ((org-agenda-skip-function
              (lambda nil
                (org-agenda-skip-entry-if (quote scheduled) (quote deadline)
                                          (quote regexp) "<[^>\n]+>")))
             (org-agenda-overriding-header "Unscheduled TODO entries: "))))))
 '(org-remember-store-without-prompt t)
 '(org-remember-templates
   '(("Todo"
      ?t
      "* TODO %^{Brief Description} %^g\n%?\nAdded: %U"
      "~/stick/org/todo.org"
      "Tasks")
     )
   )
;   (quote ((116 "* TODO %?\n Added:  %u" "~/stick/org/todo.org" "Tasks")
;           (110 "* %u %?" "~/stick/org/notes.org" "Notes"))))
 '(remember-annotation-functions (quote (org-remember-annotation)))
 '(remember-handler-functions (quote (org-remember-handler))))

; use C-c C-w to refile notes with tab completion (from comments)
;(setq org-refile-targets '((org-agenda-files . (:maxlevel . 5))))

(setq org-refile-targets (quote (("todo.org"  :maxlevel . 1) 
				 ("someday.org" :level    . 2))))


;; from Charles Cave's config:
(custom-set-variables
 '(org-agenda-restore-windows-after-quit t)
 '(org-agenda-show-all-dates nil)
; '(org-agenda-sorting-strategy (quote ((agenda time-up priority-down tag-up) (todo tag-up))))
; '(org-agenda-todo-ignore-deadlines t)
; '(org-agenda-todo-ignore-scheduled t)
; '(org-agenda-todo-ignore-with-date t)
; '(org-export-html-style "<link rel=\"stylesheet\" type=\"text/css\" href=\"mystyles.css\">")
 '(org-fast-tag-selection-single-key nil)
; '(org-log-done (quote (done)))
 '(setq org-log-done 'time)
; '(org-reverse-note-order nil)
 '(org-tags-match-list-sublevels nil)
 )

(add-hook 'org-agenda-mode-hook 'hl-line-mode)

(defun gtd ()
  (interactive)
  (find-file "~/stick/org/todo.org"))
(global-set-key (kbd "C-c g") 'gtd)

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cb" 'org-iswitchb)

(setq org-agenda-exporter-settings
      '((ps-number-of-columns 1)
        (ps-landscape-mode t)
        (htmlize-output-type 'css)))

(custom-set-variables
 '(org-remember-templates
   '(("Todo"
      ?t
      "* TODO %^{Brief Description} %^g\n%?\nAdded: %U"
      "~/stick/org/todo.org"
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
 )

;;; http://sachachua.com/wp/2008/01/18/outlining-your-notes-with-org/
(defun wicked/org-update-checkbox-count (&optional all)
  "Update the checkbox statistics in the current section.
This will find all statistic cookies like [57%] and [6/12] and update
them with the current numbers.  With optional prefix argument ALL,
do this for the whole buffer."
  (interactive "P")
  (save-excursion
    (let* ((buffer-invisibility-spec (org-inhibit-invisibility))
	   (beg (condition-case nil
		    (progn (outline-back-to-heading) (point))
		  (error (point-min))))
	   (end (move-marker
		 (make-marker)
		 (progn (or (outline-get-next-sibling) ;; (1)
			    (goto-char (point-max)))
			(point))))
	   (re "\\(\\[[0-9]*%\\]\\)\\|\\(\\[[0-9]*/[0-9]*\\]\\)")
	   (re-box
	    "^[ \t]*\\(*+\\|[-+*]\\|[0-9]+[.)]\\) +\\(\\[[- X]\\]\\)")
	   b1 e1 f1 c-on c-off lim (cstat 0))
      (when all
	(goto-char (point-min))
	(or (outline-get-next-sibling) (goto-char (point-max))) ;; (2)
	(setq beg (point) end (point-max)))
      (goto-char beg)
      (while (re-search-forward re end t)
	(setq cstat (1+ cstat)
	      b1 (match-beginning 0)
	      e1 (match-end 0)
	      f1 (match-beginning 1)
	      lim (cond
		   ((org-on-heading-p)
		    (or (outline-get-next-sibling) ;; (3)
			(goto-char (point-max)))
		    (point))
		   ((org-at-item-p) (org-end-of-item) (point))
		   (t nil))
	      c-on 0 c-off 0)
	(goto-char e1)
	(when lim
	  (while (re-search-forward re-box lim t)
	    (if (member (match-string 2) '("[ ]" "[-]"))
		(setq c-off (1+ c-off))
	      (setq c-on (1+ c-on))))
	  (goto-char b1)
	  (insert (if f1
		      (format "[%d%%]" (/ (* 100 c-on)
					  (max 1 (+ c-on c-off))))
		    (format "[%d/%d]" c-on (+ c-on c-off))))
	  (and (looking-at "\\[.*?\\]")
	       (replace-match ""))))
      (when (interactive-p)
	(message "Checkbox statistics updated %s (%d places)"
		 (if all "in entire file" "in current outline entry")
		 cstat)))))
(defadvice org-update-checkbox-count (around wicked activate)
  "Fix the built-in checkbox count to understand headlines."
  (setq ad-return-value
	(wicked/org-update-checkbox-count (ad-get-arg 1))))

;;; org-babel

(require 'org-babel-init)
;; Uncomment each of the following require lines if you want org-babel
;; to support that language.  Each language has a comment explaining
;; it's dependencies.  See the related files in lisp/langs for more
;; detailed explanations of requirements.
;; (require 'org-babel-R)         ;; R and ess-mode
;; (require 'org-babel-asymptote) ;; asymptote
;; (require 'org-babel-css)       ;; none
;; (require 'org-babel-ditaa)     ;; ditaa
;; (require 'org-babel-dot)       ;; dot
;; (require 'org-babel-gnuplot)   ;; gnuplot, and gnuplot-mode
(require 'org-babel-haskell)   ;; haskell, haskell-mode, inf-haskell
;; (require 'org-babel-ocaml)     ;; ocaml, and tuareg-mode
;; (require 'org-babel-python)    ;; python, and python-mode
;; (require 'org-babel-ruby)      ;; ruby, irb, ruby-mode, and inf-ruby
;; (require 'org-babel-sass)      ;; sass, sass-mode
(require 'org-babel-screen)    ;; screen and a terminal
;; (require 'org-babel-sql)       ;; none
(org-babel-load-library-of-babel)

(provide 'my-org-mode2)