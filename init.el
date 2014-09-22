(require 'cask "/usr/local/Cellar/cask/0.7.1/cask.el")
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
(load "07-solarized-theme.el")
(load "08-ansi-term.el")
(load "09-dash-at-point.el")
