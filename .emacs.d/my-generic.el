(provide 'my-generic)

(custom-set-variables
 '(column-number-mode t)
 '(inferior-haskell-wait-and-jump t)
 '(mouse-yank-at-point t)
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(text-mode-hook (quote (turn-on-auto-fill text-mode-hook-identify)))
 '(tool-bar-mode nil)
)

;; add local paths
(setq load-path (cons "/usr/local/share/emacs/site-lisp" load-path))
(setq load-path (cons "/usr/local/share/emacs/site-lisp/contrib" load-path))

;; set default browser
(setq browse-url-generic-program (executable-find "firefox")
      browse-url-browser-function 'browse-url-generic)

 ;; Changes all yes/no questions to y/n type
(fset 'yes-or-no-p 'y-or-n-p)
(set-variable 'confirm-kill-emacs 'yes-or-no-p)

(global-font-lock-mode t)

;; Highlight text chosen in with Mark region
(transient-mark-mode t)

;; http://www.emacswiki.org/emacs/MultiTermx
(require 'multi-term)

;; http://www.gnu.org/software/emacs/windows/Installing-Emacs.html
;(setq focus-follows-mouse t)
(setq mouse-autoselect-window t)

;; http://www.emacswiki.org/emacs/InteractivelyDoThings
(require 'ido)
(ido-mode t)

;; http://www.emacswiki.org/emacs/IswitchBuffers
;(iswitchb-default-keybindings)

; Set font
(custom-set-variables
 (custom-set-faces
  '(default ((t (:inherit nil :stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 180 :width normal :foundry "unknown")))))
 )

;; Easy switching between buffers (http://emacs-fu.blogspot.com/2008/12/easy-switching-between-visible-buffers.html)
(require 'windmove)
(windmove-default-keybindings 'super) ;; Apple key on Mac

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 ;'(auto-raise-tool-bar-buttons t t)
 ;'(auto-resize-tool-bars t t)
 ;'(calendar-week-start-day 1)
 ;'(case-fold-search t)
 ;'(column-number-mode t)
 ;'(current-language-environment "Latin-1")
 ;'(default-input-method "latin-1-prefix")
 ;'(fill-column 70)
 ;'(make-backup-files nil)
 ;'(mouse-yank-at-point t)
 ;'(normal-erase-is-backspace t)
 ;'(save-place t nil (saveplace))
 ;'(scroll-bar-mode nil)
 ;'(show-paren-mode t)
 ;'(size-indication-mode t)
 ;'(text-mode-hook (quote (turn-on-auto-fill text-mode-hook-identify)))
 ;'(tool-bar-mode nil)
 ;'(uniquify-buffer-name-style (quote forward) nil (uniquify)))
