;;;; package --- Summary: Main initialization for emacs

;;;; Commentary:

;; Emacs version >= 24 recommended

;;;; Code:
(global-set-key (kbd "<kp-0>") 'save-buffer)
(global-set-key (kbd "<kp-1>") 'find-file)
(global-set-key (kbd "<kp-2>") 'eval-last-sexp)

(provide 'keybindings)
;;; keybindings.el ends here
