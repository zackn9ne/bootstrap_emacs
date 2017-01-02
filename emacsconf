
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(require 'package)

(setq package-list '(helm nyan-mode monokai-theme auto-complete  php-mode  gist exec-path-from-shell))


; list the repositories containing them
(setq package-archives '(("elpa" . "http://tromey.com/elpa/")
			 ("melpa-stable" . "https://stable.melpa.org/packages/")
                         ("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")))

(package-initialize)


; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))


;; My Stuff




(global-hl-line-mode +1)

(find-file "~/Dropbox/.notes.org")
(find-file "~/.emacs.d/init.el")

(server-start)




(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

; Global Text Scale Mode


  (define-globalized-minor-mode 
    global-text-scale-mode
    text-scale-mode
    (lambda () (text-scale-mode 1)))
  
  (defun global-text-scale-adjust (inc) (interactive)
    (text-scale-set 1)
    (kill-local-variable 'text-scale-mode-amount)
    (setq-default text-scale-mode-amount (+ text-scale-mode-amount inc))
    (global-text-scale-mode 1)
  )
  (global-set-key (kbd "C-0")
                  '(lambda () (interactive)
                     (global-text-scale-adjust (- text-scale-mode-amount))
                     (global-text-scale-mode -1)))
  (global-set-key  (kbd "C-=") 
                  '(lambda () (interactive) (global-text-scale-adjust 1)))
  (global-set-key (kbd "C--")
                  '(lambda () (interactive) (global-text-scale-adjust -1)))
  

					; Solarized

; (add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

;; themes are neat
;; themes are neat
;; themes are neat
;;(load-theme 'sanityinc-solarized-dark t)
 (load-theme 'monokai t)

; Nyan via melpa
(nyan-mode 1)


; eShell is shel
(defun new-eshell () (interactive) (eshel))

; coding necesity
(show-paren-mode t)


;; fonts are neat
  (set-face-font 'menu "terminus -r-*-*-12-*-*-*-c-*-iso8859-1")
  (set-face-font 'default "terminus -r-*-*-14-*-*-*-c-*-iso8859-1")



(setq mac-option-modifier 'meta)


;; erc
;; This causes ERC to connect to the Freenode network upon hitting
;; C-c e f.  Replace MYNICK with your IRC nick.

 (require 'tls)

 (setq erc-hide-list '("PART" "QUIT" "JOIN"))
  (setq erc-autojoin-channels-alist '(("freenode.net"
        "#org-mode"
        "#hacklabto"
        "#emacs"
         "#emacs-beginners"
         "#emacs-ops"))
 erc-server "irc.freenode.net"
 erc-nick "netkam2")

;; ido for buffers
(ido-mode 1)
(ido-mode 'buffers) ; leave my dired alone

;; persist
(savehist-mode 1) 

;; laptops
(display-battery-mode 1)

;; line numbers
(setq linum-mode t)

;; kinda maximised on startup
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; oh no modeline
 (setq mode-line-format
          (list
           ;; value of `mode-name'
           "%m: "
           ;; value of current buffer name
           "buffer %b, "
           ;; value of current line number
           "line %l "
           "-- user: "
           ;; value of user
           (getenv "USER")))




;; keybindings i hope to remember
(global-set-key (kbd "C-;") 'pop-global-mark)

(global-set-key [C-iso-lefttab] 'previous-buffer)

(global-set-key [C-tab] 'next-buffer)

(global-set-key (kbd "C-S-K") 'kill-region)


;; autocomplete m-x package-install auto-complete
;;(ac-config-default)



;; for mutt
  (defun my-mail-mode-hook ()
     (auto-fill-mode 1)
     (abbrev-mode 1)
     (local-set-key "\C-Xk" 'server-edit))
   (add-hook 'mail-mode-hook 'my-mail-mode-hook)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("69831e572dc46ced47c5309bff8fc2f4a9e237e2bad2c76f313da814a4628694" default))))
