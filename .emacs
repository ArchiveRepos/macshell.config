;; Emacs Configuration

;; Set custom variables
;(custom-set-variables
;  '(user-emacs-directory "~/.emacs.d/")
;)
(add-to-list 'load-path "~/.emacs.d/")

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
(add-to-list 'exec-path "~/.emacs.d/el-get/emacs-w3m")
