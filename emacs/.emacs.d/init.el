;;;; package --- Summary: Main initialization for emacs

;;;; Commentary:

;; Emacs version >= 24 recommended

;;;; Code:
(load "~/.emacs.d/packages.el")
(load "~/.emacs.d/keybindings.el")

;;;;;;;;;;;;;GLOBAL MODES;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(aggressive-indent-global-mode t) ;; Force those indents hard!
(global-linum-mode t) ;; We need those numbers in front of the text.
;; (global-auto-complete-mode t) ;; Let's disable this in favor of Company
;; (smartparens-global-mode t) ;; Just as annoying as it's useful.
(powerline-default-theme) ;; bar all the way, at the bottom of the screen 0.0
(ivy-mode 1) ;; autocomplete the M-x thingybar stuff
(require 'centered-cursor-mode)
(global-centered-cursor-mode) ;; Function definition is void unless normal mode is required first :P
(global-hl-line-mode t) ; Highlight cursor line
(global-flycheck-mode)
(global-company-mode)
; (yas-global-mode) Hasn't helped me at all. Maybe replace with the skeleton package to make my own snippets.

;;;;;;;;;;;;;VARIABLES;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;; General UI

(tool-bar-mode -1) ; Don't need a toolbar...
(define-key menu-bar-tools-menu [games] 0) ; Remove games menu
(setq inhibit-startup-message t)             ; No startup message
(blink-cursor-mode 0)                      ; I'm already agitated enough
(cua-mode t)                  ; Regular classic copy-cut-paste and marking
(mouse-wheel-mode t)                         ; Mouse wheel enabled

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
