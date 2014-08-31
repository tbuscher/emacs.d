(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(setq-default js2-auto-indent-p t)
(setq-default js2-basic-offset 2)
(setq-default js2-bounce-indent-p t)
(setq-default js2-cleanup-whitespace t)
