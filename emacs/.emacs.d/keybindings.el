;;;; package --- Summary: Main initialization for emacs

;;;; Commentary:

;; Emacs version >= 24 recommended

;;;; Code:
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-switchb)

(provide 'keybindings)
;;; keybindings.el ends here
