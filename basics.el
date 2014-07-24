;; TODO: Figure out how themes work in a post prelude emacs
;; Themes
;;(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
;;(load-theme 'tomorrow t)

;; sound off please
(setq visible-bell 1)

;; no warnings at all
;;(setq ring-bell-function 'ignore)

;; cleanup on save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; line numbers
(global-linum-mode 1)

;; No tabs!
(setq-default indent-tabs-mode nil)

(defun nuke-all-buffers ()
  "kill all buffers, leaving *scratch* only"
  (interactive)
  (mapcar (lambda (x) (kill-buffer x))
          (buffer-list))
  (delete-other-windows))

(defun kill-current-buffer () (interactive) (kill-buffer (buffer-name)))

;; scroll one line at a time (less "jumpy" than defaults)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 2))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(setq scroll-step 1) ;; keyboard scroll one line at a time
