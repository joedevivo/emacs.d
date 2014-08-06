;; It all starts here!

(defvar jd-includes
    (list
        "packages.el"
        "basics.el"
        "erlang.el"
    )
  "List of files to import")

;; Load 'em all
(mapcar (lambda (file) (load (expand-file-name file user-emacs-directory))) jd-includes)

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(edts-inhibit-package-check t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
