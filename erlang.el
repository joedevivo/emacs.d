(setq load-path (cons  "/Users/joe/.erln8.d/otps/R16B03/dist/lib/erlang/lib/tools-2.6.13/emacs"
      load-path))
(setq erlang-root-dir "/Users/joe/.erln8.d/otps/R16B03/dist")
(setq exec-path (cons "/Users/joe/.erln8.d/otps/R16B03/dist/bin" exec-path))

;;(require 'erlang-start)
;;(require 'erlang-flymake)
;;(setq erlang-flymake-command "/Users/joe/.erln8.d/otps/R16B03/dist/bin/erlc")
(require 'cl)
(require 'cl-lib)
;;(use-package cl-lib)
;;(use-package dash)
;;(use-package compile)

(add-to-list 'load-path (file-truename "/Users/joe/dev/projmake-mode/src"))

;(use-package projmake-mode
;  :ensure
;  :init
;  (setq projmake-project-descs
;        '(("Rebar" "rebar.config" "nice -n5 rebar skip_deps=true compile")))
;  )
(require 'projmake-mode)
(defun projmake-enable ()
  )

(setq projmake-project-descs
        '(("Rebar" "rebar.config" "nice -n5 rebar skip_deps=true compile")))

(use-package erlang
  :config
  (add-hook 'erlang-mode-hook 'my-erlang-mode-hook)
 :ensure)

;; do we need (require 'erlang-start) ?
(defun my-erlang-mode-hook ()
  (if (buffer-file-name)
      ;; projmake breaks org-mode code block editing. need to
      ;; investigate
      (progn
        (projmake-mode)
        (projmake-search-load-project)
        (projmake-enable))
    (message "skipping projmake for ephemeral buffer"))
  )


;(add-to-list 'load-path
;             "/usr/local/lib/erlang/lib/wrangler-1.1.01/elisp")
;(require 'wrangler)

;; EDTS
(add-to-list 'load-path "/Users/joe/dev/joedevivo/edts")
;; EDTS package-install not ready for prime-time
(setq edts-inhibit-package-check "please!")
(require 'edts-start)
