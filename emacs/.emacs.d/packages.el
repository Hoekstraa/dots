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

(setq to-install
      '(aggressive-indent
	dracula-theme
	centered-cursor-mode ;; We need to focus on what's in front of us!
	auto-complete
	smartparens
	git-gutter ;; That git always ends up in the gutter.
	powerline ;; Colorful bar :)
	ivy ;; Completes me
	i3wm
	;;symon
	magit
	dired-sidebar
	dired-single
	flycheck
	yasnippet
	yasnippet-snippets
	
	;;paredit ;; May be useful when I program in Clojure or another Lisp again
	;;parinfer

	;; Ruby
	ruby-end ;; Auto-insert an ending thing to block-stuff in Ruby
	inf-ruby ;; Provides Ruby REPL
	ac-inf-ruby
	
	;;markup langs
	markdown-mode
	adoc-mode
	haml-mode
	auctex ;; Much nicer LaTeX support
	
	;; Other langs
	lua-mode
	csharp-mode ;; C#
	omnisharp
	tuareg ;; Ocaml tools
        ))

(mapc 'install-if-needed to-install)


(defun tuareg-abbrev-hook ()
  "Prevents error in Tuareg."
  ())

(provide 'packages)
;;; packages.el ends here
