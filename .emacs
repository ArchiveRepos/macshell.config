;; Emacs Configuration

(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/.emacs.d/elisp/")

;; load theme
(add-to-list 'load-path "~/.emacs.d/theme/")
;(load-theme 'molokai-theme t)
(require 'color-theme)
(color-theme-initialize)
(color-theme-euphoria)

;; correct show ls 
; can use M-x term instead
; note: need to use C-c while in term mode
(ansi-color-for-comint-mode-on)

;; set default emacs src fold
(setq source-directory "~/Documents/emacs-24.3-src/")

;; set default font size to 14pt
(set-face-attribute 'default nil :height 140)

;; change yes-or-no-p to y-or-n-p
(defalias 'yes-or-no-p 'y-or-n-p)

;; set keys
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

;; Copy from Clipboard
(setq x-select-enable-clipboard t)

;; show trace on error
(setq debug-on-error t)

;; el-get package
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)

;; Autocomplete package
;(add-to-list 'load-path "~/.emacs.d/el-get/auto-complete")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/el-get/auto-complete/dict")
(ac-config-default)

;; CEDET setup
;(load-file "~/.emacs.d/cedet-1.1/common/cedet.el")
;(global-ede-mode 1) ;Enable the Project management system
;(semantic-load-enable-code-helpers) ;Enable prototype help and smart completion
;(global-srecode-minor-mode 1) ;Enable template insertion menu

;; emacs-w3m
;(add-to-list 'exec-path "~/.emacs.d/el-get/emacs-w3m")
; set charaters set to utf-8
(setq w3m-coding-system 'utf-8
      w3m-file-coding-system 'utf-8
      w3m-file-name-coding-system 'utf-8
      w3m-input-coding-system 'utf-8
      w3m-output-coding-system 'utf-8
      w3m-terminal-coding-system 'utf-8)
; start page
(setq w3m-home-page "http://www.google.com")
; display pics 
; seems not working under terminal mode (-nw)
(setq w3m-default-display-inline-images t)
(setq w3m-default-toggle-inline-images t)
; using cookies
(setq w3m-command-arguments '("-cookie" "-F"))
(setq w3m-use-cookies t)
(setq browse-url-browser-function 'w3m-browse-url)
(setq w3m-view-this-url-new-session-in-background t)

;; add keyfreq to monitor which keys used frequently
(add-to-list 'load-path "~/.emacs.d/keyfreq")
(require 'keyfreq)
(keyfreq-mode 1)
(keyfreq-autosave-mode 1)

;;set ido-mode default open
(require 'ido)
(ido-mode 1)

;;set yasnippet
(require 'yasnippet)
(yas-global-mode 1)

;;set nyan-mode
(if (display-graphic-p)
    (progn (nyan-mode 1)))

;;set tabs for indentation
(add-hook 'python-mode-hook
          (lambda () (setq indent-tabs-mode t)))

;; Disable tool-bar
;(tool-bar-mode -1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-auto-show-menu 0.5)
 '(backup-directory-alist (quote (("" . "~/emacs_bak/"))))
 '(column-number-mode t)
 '(confirm-kill-emacs (quote y-or-n-p))
 '(font-lock-global-modes (quote (not speedbar-mode)))
 '(global-auto-complete-mode t)
 '(global-linum-mode t)
 '(global-visual-line-mode t)
 '(keyfreq-autosave-mode t)
 '(mouse-avoidance-mode (quote exile) nil (avoid))
 '(tool-bar-mode nil)
 '(truncate-lines nil)
 '(yas-global-mode t nil (yasnippet)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
