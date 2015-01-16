(server-start)

;; Clipboard copy & paste
(global-set-key "\C-w" 'clipboard-kill-region)
(global-set-key "\M-w" 'clipboard-kill-ring-save)
(global-set-key "\C-y" 'clipboard-yank)

;; Config for python editing
(setq-default indent-tabs-mode nil)    ; use only spaces and no tabs
(setq default-tab-width 4)
(setq js-indent-level 2)

(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

(require 'iso-transl)

(add-hook 'before-save-hook 'whitespace-cleanup)

(add-to-list 'load-path "~/.emacs.d/plugins/magit-1.2.0/")
(require 'magit)

(require 'magit)
(global-set-key (kbd "C-x g") 'magit-status)
(eval-after-load 'magit
  '(progn
     (set-face-foreground 'magit-diff-add "green3")
     (set-face-foreground 'magit-diff-del "red3")
     (when (not window-system)
       (set-face-background 'magit-item-highlight "black"))))

;(require 'pymacs)
;(pymacs-load "ropemacs" "rope-")
;(setq ropemacs-enable-autoimport t)

(add-to-list 'load-path "~/.emacs.d/plugins/auto-complete-1.2")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/vendor/auto-complete-1.2/dict")
(ac-config-default)

(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet/")
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/plugins/yasnippet/snippets")
(yas/load-directory "~/.emacs.d/plugins/django-mode/snippets")

(add-to-list 'load-path "~/.emacs.d/plugins/django-html-mode/")
(require 'django-html-mode)
(add-to-list 'auto-mode-alist '("\.djhtml$" . django-html-mode))
(add-to-list 'load-path "~/.emacs.d/plugins/django-mode/")
(require 'django-mode)


(add-to-list 'load-path "~/.emacs.d/plugins/puppet-mode/")
(autoload 'puppet-mode "puppet-mode" "Load puppet-mode")
(add-to-list 'auto-mode-alist '("\\.pp$" . puppet-mode))

(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

(add-to-list 'load-path "~/.emacs.d/plugins/dirtree-mode/")
(require 'dirtree)

(add-to-list 'load-path "~/.emacs.d/plugins/rspec-mode/")
(require 'rspec-mode)

(add-to-list 'load-path "~/.emacs.d/plugins/coffee-mode/")
(require 'coffee-mode)
(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
(add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode))

(add-to-list 'load-path "~/.emacs.d/plugins/haml-mode/")
(require 'haml-mode)
(add-hook 'haml-mode-hook
          (lambda ()
            (setq indent-tabs-mode nil)
            (define-key haml-mode-map "\C-m" 'newline-and-indent)))

(add-to-list 'load-path "~/.emacs.d/plugins/sass-mode/")
(require 'sass-mode)

(add-to-list 'load-path "~/.emacs.d/plugins/lintnode/")
;; Make sure we can find the lintnode executable
(setq lintnode-location "~/.emacs.d/plugins/lintnode/")
(setq lintnode-node-program "nodejs")
;; (setq lintnode-jslint-excludes (list 'plusplus 'onevar 'white))
;; (setq lintnode-jslint-includes (list 'sloppy 'nomen 'devel))
;(setq lintnode-autostart t)
;; Start the server when we first open a js file and start checking
;; (add-hook 'js-mode-hook
;;           (lambda ()
;;             (lintnode-hook)))


(require 'flymake-jslint)
     (add-hook 'js-mode-hook
         (lambda () (lintnode-hook)))

(add-to-list 'load-path "~/.emacs.d/plugins/flymake-cursor/")
(require 'flymake-cursor)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(help-at-pt-timer-delay 0.1 t)
 '(inhibit-startup-screen t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
