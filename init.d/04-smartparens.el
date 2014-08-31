(require 'smartparens-config)
(require 'smartparens-ruby)

(smartparens-global-mode t)
(show-smartparens-global-mode t)
(sp-with-modes '(rhtml-mode)
  (sp-local-pair "<" ">")
  (sp-local-pair "<%" "%>"))
