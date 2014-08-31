(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'pallet)

(add-to-list 'load-path "~/.emacs.d/init.d")
(add-to-list 'load-path "~/.emacs.d/vendor/railscasts-theme")

(load "00-base.el")
(load "01-ruby.el")
(load "02-flx-ido.el")
(load "03-projectile.el")
(load "04-smartparens.el")
(load "05-highlight-indentation.el")
(load "06-js2-mode.el")
