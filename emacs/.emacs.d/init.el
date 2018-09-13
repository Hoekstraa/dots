;; Emacs version >= 24 recommended
(require 'package)
(package-initialize)

(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/") t)

(package-refresh-contents)

(defun install-if-needed (package)
  (unless (package-installed-p package)
    (package-install package)))

;;;;;;;;;;;;;PACKAGES;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq to-install
      '(aggressive-indent
	dracula-theme
	haml-mode
	lua-mode
	;; Ruby
	ruby-end ;; Auto-insert an ending thing to block-stuff in Ruby
	inf-ruby ;; Provides Ruby REPL
	ac-inf-ruby
	
	centered-cursor-mode ;; We need to focus on what's in front of us!
	auto-complete
	smartparens
	git-gutter ;; That git always ends up in the gutter.
	paredit ;; May be useful when I program in Clojure or another Lisp again
	markdown-mode
	powerline ;; Colorful bar :)
	ivy ;; Completes me
	auctex ;; Much nicer LaTeX support
	i3wm
	symon
	magit
	dired-sidebar
	dired-single
	csharp-mode ;; C#
	tuaga ;; Ocaml tools
        ))

(mapc 'install-if-needed to-install)

;;;;;;;;;;;;;GLOBAL MODES;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(aggressive-indent-global-mode t) ;; Force those indents hard!
(global-linum-mode t) ;; We need those numbers in front of the text.
(global-auto-complete-mode t) ;; Duh
;; (smartparens-global-mode t) ;; Maybe replace this with parinfer if I want more aggressive parens
;; (global-git-gutter-mode +1) Possibly a little annoying to have globally?
(powerline-default-theme) ;; bar all the way, at the bottom of the screen 0.0
(symon-mode) ;; Display computer info in the terminalbar when idling
(ivy-mode 1) ;; autocomplete the M-x thingybar stuff
(require 'centered-cursor-mode)
(global-centered-cursor-mode) ;; Function definition is void unless normal mode is called first :P
(global-hl-line-mode t) ; Highlight cursor line

;;;;;;;;;;;;;HOOKS:;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(require 'reftex)
;;(autoload 'reftex-mode "reftex" "RefTeX Minor Mode" t)
;;(autoload 'turn-on-reftex "reftex" "RefTeX Minor Mode" nil)
;;(autoload 'reftex-citation "reftex-cite" "Make citation" nil)
;;(autoload 'reftex-index-phrase-mode "reftex-index" "Phrase Mode" t)
;;(add-hook 'latex-mode-hook 'turn-on-reftex) ; with Emacs latex mode
;; (add-hook 'reftex-load-hook 'imenu-add-menubar-index)
;;(add-hook 'LaTeX-mode-hook 'turn-on-reftex)

;; Not working currently, don't know why :|
;;(add-hook ’LaTeX-mode-hook ’turn-on-reftex)   ; with AUCTeX LaTeX mode
;;(add-hook ’latex-mode-hook ’turn-on-reftex)   ; with Emacs latex mode
(add-hook 'reftex-load-hook 'imenu-add-menubar-index)
(add-hook 'reftex-mode-hook 'imenu-add-menubar-index)

;;;;;;; LaTeX compilecheck
;;(require 'flymake)
;;
;;(defun flymake-get-tex-args (file-name)
;;(list "pdflatex"
;;(list "-file-line-error" "-draftmode" "-interaction=nonstopmode" file-name)))
;;
;;(add-hook 'LaTeX-mode-hook 'flymake-mode)


;;;;;;; LaTeX spellcheck
;;(setq ispell-program-name "aspell") ; could be ispell as well, depending on your preferences
;;(setq ispell-dictionary "english") ; this can obviously be set to any language your spell-checking program supports

;;(add-hook 'LaTeX-mode-hook 'flyspell-mode)
;;(add-hook 'LaTeX-mode-hook 'flyspell-buffer)



;;;;;;;;;;;;;VARIABLES;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;; General UI

(define-key menu-bar-tools-menu [games] nil) ; Remove games menu
(setq inhibit-startup-message t)             ; No startup message
(blink-cursor-mode nil)                      ; I'm already agitated enough
(cua-mode t)                  ; Regular classic copy-cut-paste and marking
(mouse-wheel-mode t)                         ; Mouse wheel enabled
					;(set-face-background 'hl-line darkslateblue) ; WHY DOESN'T THIS WORK? FIND FIX!
;;;;;; I'm a European, so...

(setq european-calendar-style 't)              ; European style calendar
(setq calendar-week-start-day 1)               ; Week starts monday
(setq ps-paper-type 'a4)                       ; Specify printing format

;;;;;; Files 'n stuff

(setq auto-save-timeout 60)                    ; Autosave every minute
(setq read-file-name-completion-ignore-case 't); Ignore case when completing file names

;;;;;; Tabs, spaces, indents, lines, parentheses, etc.

(setq indent-tabs-mode nil)
(setq-default c-basic-offset 4)  ;; use 4 spaces as indentation instead of tabs
(show-paren-mode 1)                            ; Highlight parenthesis pairs
(setq blink-matching-paren-distance nil)       ; Blinking parenthesis
(setq show-paren-style 'expression)            ; Highlight text between parentheses

					;(require 'paren)
					;(set-face-background 'show-paren-match black)

;;;;;; AucTeX

(setq TeX-auto-save t) ; Some stuff to do with AucTeX
(setq TeX-parse-self t)
(setq-default TeX-master nil)
(setq TeX-save-query nil)
(setq TeX-PDF-mode t)






;; No stupid backup/temporary files in every folder, but in a dedicated one
(setq
 version-control t
 kept-new-versions 6
 kept-old-versions 2
 backup-by-copying t   
 backup-directory-alist '(("." . "~/.emacs.d/saves"))
 delete-old-versions t)

;;;;;;;;;;;;;FUNCTIONS;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun vsplit-last-buffer () ; When opening a new split,
  (interactive)  ; open previous buffer instead of 2 identical ones
  (split-window-vertically)
  (other-window 1 nil)
  (switch-to-next-buffer)
  )
(defun hsplit-last-buffer ()
  (interactive)
  (split-window-horizontally)
  (other-window 1 nil)
  (switch-to-next-buffer)
  )

(global-set-key (kbd "C-x 2") 'vsplit-last-buffer)
(global-set-key (kbd "C-x 3") 'hsplit-last-buffer)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (dracula)))
 '(custom-safe-themes
   (quote
    ("a4df5d4a4c343b2712a8ed16bc1488807cd71b25e3108e648d4a26b02bc990b3" default)))
 '(font-latex-fontify-script nil)
 '(package-selected-packages
   (quote
    (auctex-lua dired-sidebar dired-single magit i3wm auctex ac-inf-ruby inf-ruby flymake-ruby flymake-lua flymake symon powerline paredit git-gutter smartparens auto-complete centered-cursor-mode ruby-end haml-mode lua-mode aggressive-indent))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
