;(remove-hook 'prog-mode-hook 'esk-turn-on-hl-line-mode)
;(remove-hook 'prog-mode-hook 'esk-turn-on-idel-highlight-mode)

(add-to-list 'load-path "~/.emacs.d/elisp")

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

; Themes
;(load-theme 'zenburn t)
;(load-theme 'misterioso t)
(load-theme 'solarized-dark t)

; Add Marmalade package repo
(require 'package)
(add-to-list 'package-archives 
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(package-initialize)

; for inferior lisp mode
(setq inferior-lisp-program "/usr/local/bin/clisp")

; scala mode
(require 'scala-mode-auto)
(add-hook 'scala-mode-hook
            '(lambda ()
           (scala-mode-feature-electric-mode)
           ))

; scala ensime settings
(require 'scala-mode)
(add-to-list 'auto-mode-alist '("\\.scala$" . scala-mode))
(add-to-list 'load-path "~/.emacs.d/site-lisp/ensime/elisp/")
(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

; To run scala REPL from emacs
(push "/usr/local/scala-2.10.1/bin/" exec-path)

; To run SBT shell from emacs
(push "/usr/local/sbt/bin/" exec-path)

; ensime customization for scala repl
;(custom-set-variables
; '( ensime-inf-default-cmd-line '("sbt" "console"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("27b53b2085c977a8919f25a3a76e013ef443362d887d52eaa7121e6f92434972" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "64b7be5703b90e05f7bc1f63a9f689a7c931626462697bea9476b397da194bd9" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(global-linum-mode t)
