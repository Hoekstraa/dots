;;;; package --- Summary: Packages for emacs init file

;;;; Commentary:

;; Emacs version >= 24 recommended

;;;; Code:
(require 'package)
(package-initialize)

(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/") t)

(package-refresh-contents)

(defun install-if-needed (package)
  "Install PACKAGE if not yet installed."
  (unless (package-installed-p package)
    (package-install package)))

;;;;;;;;;;;;;PACKAGES;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defvar to-install)
(setq to-install
      '(aggressive-indent
	rebecca-theme
	powerline ;; Colorful bar :)
	ivy ;; Completes me
	magit ; unused currently
	projectile
	dired-sidebar
	dired-single
	flycheck
	rainbow-delimiters ; WE NEED MORE COLOR!
	company	; Code completion, generally better then AC
	company-c-headers
	company-web
	counsel ; Complete all the things
	
	;;paredit ;; May be useful when I program in Clojure or another Lisp again
	;;parinfer

	;; Ruby
	ruby-end ;; Auto-insert an ending thing to block-stuff in Ruby
	inf-ruby ;; Provides Ruby REPL
	ac-inf-ruby
	
	;;markup langs
	markdown-mode
	adoc-mode
	auctex ;; Much nicer LaTeX support
	web-mode
	emmet-mode
	
	;; Other langs
	lua-mode
	csharp-mode ;; C#
	sass-mode
	tuareg ;; Ocaml tools
        ))

(mapc 'install-if-needed to-install)

(defun tuareg-abbrev-hook ()
  "Prevents error in Tuareg."
  ())

(defvar flycheck-emacs-lisp-executable)
(set 'flycheck-emacs-lisp-executable "emacs")

(provide 'packages)
;;; packages.el ends here
