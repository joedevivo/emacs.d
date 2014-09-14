;; Themes
(use-package color-theme-sanityinc-tomorrow
  :ensure
  :config
  (load-theme 'sanityinc-tomorrow-day t))

;; y or n
(defalias 'yes-or-no-p 'y-or-n-p)
(setq use-dialog-box nil)

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

(use-package magit
  :ensure
  :bind ("C-x g" . magit-status))

;; replace buffer-menu with ibuffer
(global-set-key (kbd "C-x C-b") 'ibuffer)

(require 'ido)
(ido-mode t)
(setq ido-auto-merge-work-directories-length nil
      ido-create-new-buffer 'always
      ido-enable-flex-matching t
      ido-enable-prefix nil
      ido-handle-duplicate-virtual-buffers 2
      ido-max-prospects 10
      ;; very important to disable this, otherwise, if you happen
      ;; to try to open a file and your cursor happens to be on a
      ;; URL-ish thing, then emacs will hang trying to contact
      ;; some random server for no good reason.
      ido-use-filename-at-point 'nil
      ido-use-virtual-buffers t)
;; auto-completion in minibuffer
(icomplete-mode +1)

;; savehist keeps track of some history
(setq savehist-additional-variables
      ;; search entries
      '(search ring regexp-search-ring)
      ;; save every minute
      savehist-autosave-interval 60
      ;; keep the home clean
      savehist-file (concat user-emacs-directory "savehist"))
(savehist-mode t)

;; save recent files
(setq recentf-save-file (concat user-emacs-directory "recentf")
      recentf-max-saved-items 200
      recentf-max-menu-items 15)
(recentf-mode t)