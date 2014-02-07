;; Emacs Configuration

;; Set custom variables
;(custom-set-variables
;  '(user-emacs-directory "~/.emacs.d/")
;)
(add-to-list 'load-path "~/.emacs.d/")

;; correct show ls 
; can use M-x term instead
; note: need to use C-c while in term mode
(ansi-color-for-comint-mode-on)

;; change yes-or-no-p to y-or-n-p
(defalias 'yes-or-no-p 'y-or-n-p)

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
;(add-to-list 'ac-dictionary-directories "~/.emacs.d/el-get/auto-complete/dict")
;(require 'auto-complete-config)
;(ac-config-default)

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
; seems not working under the MacOS 10.9
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
