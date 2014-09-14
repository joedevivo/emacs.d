(require 'package)
(package-initialize)
(add-to-list 'package-archives '("elpa" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))

(setq my-onlinep nil)
(unless
    (condition-case nil
        (delete-process
         (make-network-process
          :name "my-check-internet"
          :host "melpa.milkbox.net"
          :service 80))
      (error t))
  (setq my-onlinep t))

(when my-onlinep
  (package-refresh-contents)
  (package-initialize))

(add-to-list 'load-path "~/.emacs.d/vendor/use-package")
(require 'use-package)