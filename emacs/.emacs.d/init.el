;;;; package --- Summary: Main initialization for emacs

;;;; Commentary:

;; Emacs version >= 24 recommended

;;;; Code:
(load "~/.emacs.d/packages.el")

;;;;;;;;;;;;;GLOBAL MODES;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(aggressive-indent-global-mode t) ;; Force those indents hard!
(global-linum-mode t) ;; We need those numbers in front of the text.
(global-auto-complete-mode t) ;; Duh
(smartparens-global-mode t) ;; Maybe replace this with parinfer if I want more aggressive parens
;(global-git-gutter-mode +1) ;;Possibly a little annoying to have globally?
(powerline-default-theme) ;; bar all the way, at the bottom of the screen 0.0
;;(symon-mode) ;; Display computer info in the terminalbar when idling
(ivy-mode 1) ;; autocomplete the M-x thingybar stuff
(require 'centered-cursor-mode)
(global-centered-cursor-mode) ;; Function definition is void unless normal mode is called first :P
(global-hl-line-mode t) ; Highlight cursor line
(global-flycheck-mode)

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

;;;;;;; LaTeX spellcheck
;;(setq ispell-program-name "aspell") ; could be ispell as well, depending on your preferences
;;(setq ispell-dictionary "english") ; this can obviously be set to any language your spell-checking program supports

;;(add-hook 'LaTeX-mode-hook 'flyspell-mode)
;;(add-hook 'LaTeX-mode-hook 'flyspell-buffer)



;;;;;;;;;;;;;VARIABLES;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;; General UI

(tool-bar-mode -1) ; Don't need a toolbar...
(define-key menu-bar-tools-menu [games] 0) ; Remove games menu
(setq inhibit-startup-message t)             ; No startup message
(blink-cursor-mode 0)                      ; I'm already agitated enough
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

(setq indent-tabs-mode 0)
(setq-default c-basic-offset 4)  ;; use 4 spaces as indentation instead of tabs
(show-paren-mode 1)                            ; Highlight parenthesis pairs
(setq blink-matching-paren-distance 0)       ; Blinking parenthesis
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

;; Font!
(set-face-attribute 'default nil :family "FuraCode Nerd Font Mono"  :height 130)

;;;;;;;;;;;;;FUNCTIONS;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun vsplit-last-buffer ()
  "When opening a new split, open previous buffer instead of 2 identical ones.  Vertically."
  (interactive)
  (split-window-vertically)
  (other-window 1 nil)
  (switch-to-next-buffer)
  )
(defun hsplit-last-buffer ()
  "When opening a new split, open previous buffer instead of 2 identical ones.  Horizontally."
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
 '(blink-cursor-mode nil)
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes (quote (dracula)))
 '(custom-safe-themes
   (quote
    ("aaffceb9b0f539b6ad6becb8e96a04f2140c8faa1de8039a343a4f1e009174fb" "a4df5d4a4c343b2712a8ed16bc1488807cd71b25e3108e648d4a26b02bc990b3" default)))
 '(font-latex-fontify-script nil)
 '(package-selected-packages
   (quote
    (yasnippet-snippets adoc-mode ascii company ac-clang auctex-lua dired-sidebar dired-single magit i3wm auctex ac-inf-ruby inf-ruby flymake-ruby flymake-lua flymake symon powerline paredit git-gutter smartparens auto-complete centered-cursor-mode ruby-end haml-mode lua-mode aggressive-indent)))
 '(show-paren-mode t)
 '(tool-bar-mode nil))

(provide 'init)
;;; init.el ends here
