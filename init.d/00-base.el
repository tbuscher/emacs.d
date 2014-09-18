;; Set the starting position and width and height of Emacs Window
(add-to-list 'default-frame-alist '(left . 0))
(add-to-list 'default-frame-alist '(top . 0))
(add-to-list 'default-frame-alist '(height . 88))
(add-to-list 'default-frame-alist '(width . 200))
(set-default-font "-apple-Fixed6x13-medium-normal-normal-*-13-*-*-*-m-0-iso10646-1")
(setq column-number-mode t)
(ido-mode t)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)
;; Turn on the menu bar for exploring new modes
(global-set-key (kbd "C-<f10>") 'menu-bar-mode)

(setq inhibit-startup-message t)

;; To get rid of Weird color escape sequences in Emacs.
;; Instruct Emacs to use emacs term-info not system term info
;; http://stackoverflow.com/questions/8918910/weird-character-zsh-in-emacs-terminal
(setq system-uses-terminfo nil)

;; Prefer utf-8 encoding
(prefer-coding-system 'utf-8)

;; Use windmove bindings
;; Navigate between windows using Alt-1, Alt-2, Shift-left, shift-up, shift-right
(windmove-default-keybindings) 

;; Do not use tabs for indentation
(setq-default indent-tabs-mode nil)
;; Display continuous lines
(setq-default truncate-lines nil)
;; trucate even even when screen is split into multiple windows
(setq-default truncate-partial-width-windows nil)

(require 'railscasts-theme)

;; Highlight incremental search
(setq search-highlight t)

(transient-mark-mode t)
(global-visual-line-mode 1)
(display-time)

;; Enable copy and pasting from clipboard
(setq x-select-enable-clipboard t)
(setq x-select-enable-primary t)

;; Disable backups
(setq backup-inhibited t)
;;disable auto save
(setq auto-save-default nil)

;; Move one word forward. Leave the pointer at start of word
;; instead of emacs default end of word. Treat _ as part of word
(defun geosoft-forward-word ()
  (interactive)
  (forward-char 1)
  (backward-word 1)
  (forward-word 2)
  (backward-word 1)
  (backward-char 1)
  (cond ((looking-at "_") (forward-char 1) (geosoft-forward-word))
	(t (forward-char 1)))) 

;; Move one word backward. Leave the pointer at start of word
;; Treat _ as part of word
(defun geosoft-backward-word ()
  (interactive)
  (backward-word 1)
  (backward-char 1)
  (cond ((looking-at "_") (geosoft-backward-word))
        (t (forward-char 1)))) 

(global-set-key [C-right] 'geosoft-forward-word)
(global-set-key [C-left] 'geosoft-backward-word)

(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)
(setq uniquify-separator "/")
(setq uniquify-after-kill-buffer-p t) ; rename after killing uniquified
(setq uniquify-ignore-buffers-re "^\\*") ; don't muck with special buffers

(require 'saveplace)
(setq-default save-place t)

;; occur easily inside isearch
(define-key isearch-mode-map (kbd "C-o")
  (lambda ()
    (interactive)
    (let ((case-fold-search isearch-case-fold-search))
      (occur (if isearch-regexp isearch-string (regexp-quote isearch-string))))))

(require 'ansi-color)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

(defun colorize-compilation-buffer ()
  (interactive)
  (toggle-read-only)
  (ansi-color-apply-on-region (point-min) (point-max))
  (toggle-read-only))
(add-hook 'compilation-filter-hook 'colorize-compilation-buffer)

(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
