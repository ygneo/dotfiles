;; Clipboard copy & paste
(global-set-key "\C-w" 'clipboard-kill-region)
(global-set-key "\M-w" 'clipboard-kill-ring-save)
(global-set-key "\C-y" 'clipboard-yank)

(add-to-list 'load-path "~/.emacs.d/plugins")

;; Config for python editing
(setq-default indent-tabs-mode nil)    ; use only spaces and no tabs
(setq default-tab-width 4)

;(require 'pymacs)
;(pymacs-load "ropemacs" "rope-")
;(setq ropemacs-enable-autoimport t)

(add-to-list 'load-path "~/.emacs.d/plugins/auto-complete-1.2")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/vendor/auto-complete-1.2/dict")
(ac-config-default)

(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/plugins/yasnippet/snippets")
(yas/load-directory "~/.emacs.d/plugins/django-mode/snippets") 

(require 'django-html-mode) 
(require 'django-mode)
(add-to-list 'auto-mode-alist '("\.djhtml$" . django-html-mode))

(autoload 'puppet-mode "puppet-mode" "Load puppet-mode")
(add-to-list 'auto-mode-alist '("\\.pp$" . puppet-mode))

(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

(require 'dirtree)

(require 'magit)

(require 'rspec-mode)

(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

(require 'haml-mode)
(add-hook 'haml-mode-hook
          (lambda ()
            (setq indent-tabs-mode nil)
            (define-key haml-mode-map "\C-m" 'newline-and-indent)))

(require 'sass-mode)