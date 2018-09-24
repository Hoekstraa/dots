(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.adoc\\'" . adoc-mode))

(remove-hook 'adoc-mode 'font-lock-mode)
(add-hook 'emacs-lisp-mode-hook 'rainbow-delimiters-mode)
