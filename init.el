;; It all starts here!

(defvar jd-includes
    (list
        "basics.el"
        "erlang.el"
        "packages.el"
    )
  "List of files to import")

;; Load 'em all
(mapcar (lambda (file) (load (expand-file-name file user-emacs-directory))) jd-includes)

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
