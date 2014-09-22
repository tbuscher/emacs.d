(autoload 'dash-at-point "dash-at-point" "Search the word at point with Dash." t nil)

(add-to-list 'dash-at-point-mode-alist '(enh-ruby-mode . "ruby,rubygems,rails"))

(global-set-key "\C-cd" 'dash-at-point)
(global-set-key "\C-ce" 'dash-at-point-with-docset)
