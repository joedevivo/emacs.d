(setq load-path (cons  "/Users/joe/.erln8.d/otps/R16B03/dist/lib/erlang/lib/tools-2.6.13/emacs"
      load-path))
(setq erlang-root-dir "/Users/joe/.erln8.d/otps/R16B03/dist")
(setq exec-path (cons "/Users/joe/.erln8.d/otps/R16B03/dist/bin" exec-path))

(require 'erlang-start)
(require 'erlang-flymake)
(setq erlang-flymake-command "/Users/joe/.erln8.d/otps/R16B03/dist/bin/erlc")

(add-to-list 'load-path
             "/usr/local/lib/erlang/lib/wrangler-1.1.01/elisp")
(require 'wrangler)

;; EDTS
(add-to-list 'load-path "/Users/joe/dev/edts")
;; EDTS package-install not ready for prime-time
(setq edts-inhibit-package-check "please!")
(require 'edts-start)
