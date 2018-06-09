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

(setq to-install
      '(aggressive-indent
        dracula-theme
	haml-mode
	lua-mode
	ruby-end
	centered-cursor-mode
	auto-complete
	smartparens
	git-gutter
	;; paredit ;; Maybe useful when I program in Clojure or another Lisp again
	markdown-mode
	powerline
	
	))

(mapc 'install-if-needed to-install)

(aggressive-indent-global-mode t)
(global-centered-cursor-mode t)
(global-linum-mode t)
(global-auto-complete-mode t)
(smartparens-global-mode t)
(global-git-gutter-mode +1)
(powerline-default-theme)


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
    ("a4df5d4a4c343b2712a8ed16bc1488807cd71b25e3108e648d4a26b02bc990b3" default)))
 '(package-selected-packages
   (quote
    (symon powerline markdown-mode paredit git-gutter smartparens auto-complete centered-cursor-mode ruby-end haml-mode lua-mode aggressive-indent))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
