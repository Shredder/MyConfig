(provide 'my-jabber-mode)

(add-to-list 'load-path "~/.emacs.d/lisp/emacs-jabber-0.7.93")
(require 'jabber-autoloads)

;; http://www.emacswiki.org/emacs/GoogleTalk
(setq jabber-account-list
      '(("joerg.ziefle@gmail.com" 
         (:network-server . "talk.google.com")
         (:connection-type . ssl))))