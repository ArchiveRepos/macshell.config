;;; .loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (global-auto-complete-mode auto-complete-mode auto-complete)
;;;;;;  "auto-complete/auto-complete" "auto-complete/auto-complete.el"
;;;;;;  (21234 51526 0 0))
;;; Generated autoloads from auto-complete/auto-complete.el

(autoload 'auto-complete "auto-complete/auto-complete" "\
Start auto-completion at current point.

\(fn &optional SOURCES)" t nil)

(autoload 'auto-complete-mode "auto-complete/auto-complete" "\
AutoComplete mode

\(fn &optional ARG)" t nil)

(defvar global-auto-complete-mode nil "\
Non-nil if Global-Auto-Complete mode is enabled.
See the command `global-auto-complete-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-auto-complete-mode'.")

(custom-autoload 'global-auto-complete-mode "auto-complete/auto-complete" nil)

(autoload 'global-auto-complete-mode "auto-complete/auto-complete" "\
Toggle Auto-Complete mode in all buffers.
With prefix ARG, enable Global-Auto-Complete mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Auto-Complete mode is enabled in all buffers where
`auto-complete-mode-maybe' would do it.
See `auto-complete-mode' for more information on Auto-Complete mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (el-get-checksum el-get-make-recipes el-get-cd
;;;;;;  el-get-self-update el-get-update-packages-of-type el-get-update-all
;;;;;;  el-get-version) "el-get/el-get" "el-get/el-get.el" (21234
;;;;;;  48027 0 0))
;;; Generated autoloads from el-get/el-get.el

(autoload 'el-get-version "el-get/el-get" "\
Message the current el-get version

\(fn)" t nil)

(autoload 'el-get-update-all "el-get/el-get" "\
Performs update of all installed packages.

\(fn &optional NO-PROMPT)" t nil)

(autoload 'el-get-update-packages-of-type "el-get/el-get" "\
Update all installed packages of type TYPE.

\(fn TYPE)" t nil)

(autoload 'el-get-self-update "el-get/el-get" "\
Update el-get itself.  The standard recipe takes care of reloading the code.

\(fn)" t nil)

(autoload 'el-get-cd "el-get/el-get" "\
Open dired in the package directory.

\(fn PACKAGE)" t nil)

(autoload 'el-get-make-recipes "el-get/el-get" "\
Loop over `el-get-sources' and write a recipe file for each
entry which is not a symbol and is not already a known recipe.

\(fn &optional DIR)" t nil)

(autoload 'el-get-checksum "el-get/el-get" "\
Compute the checksum of the given package, and put it in the kill-ring

\(fn PACKAGE &optional PACKAGE-STATUS-ALIST)" t nil)

;;;***

;;;### (autoloads (el-get-list-packages) "el-get/el-get-list-packages"
;;;;;;  "el-get/el-get-list-packages.el" (21234 48027 0 0))
;;; Generated autoloads from el-get/el-get-list-packages.el

(autoload 'el-get-list-packages "el-get/el-get-list-packages" "\
Display a list of packages.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "icicles/icicles" "icicles/icicles.el" (21235
;;;;;;  324 0 0))
;;; Generated autoloads from icicles/icicles.el
 (autoload 'icy-mode    "icicles" "Toggle Icicle mode - see `icicle-mode'." t nil)
 (autoload 'icicle-mode "icicles" 
"Icicle mode: Toggle minibuffer input completion and cycling.
 Non-nil prefix ARG turns mode on if ARG > 0, else turns it off.
 Icicle mode is a global minor mode.  It binds keys in the minibuffer.
 \ 
 For more information, use `\\<minibuffer-local-completion-map>\\[icicle-minibuffer-help]' \
 when the minibuffer is active.
 \ 
 Depending on your platform, if you use Icicles in a text terminal
 \(that is, without a window system/manager), you might need to change
 some of the key bindings if some of the default bindings are not
 available to you.
 \ 
 Icicle mode defines many top-level commands.  For a list, see the
 Commentary headers of files `icicles-cmd1.el' and `icicles-cmd2.el'."
 t nil)

;;;***

;;;### (autoloads (org-diary org-mode) "org/org" "org/org.el" (21234
;;;;;;  56270 0 0))
;;; Generated autoloads from org/org.el

(autoload 'org-mode "org/org" "\
Carsten's special outline mode for keeping notes about everything.

\(fn)" t nil)

(autoload 'org-diary "org/org" "\
Returns diary information from an org-file.
This function can be used in an \"sexp\" diary entry in the Emacs calendar.
It accesses an org file and extracts information from that file to be
listed in the diary.  The function accepts arguments specifying what
items should be listed.  The following arguments are allowed:

   :timestamp    List the headlines of items containing a date stamp or
                 date range matching the selected date.  Deadlines will
                 also be listed, on the expiration day.

   :deadline     List any deadlines past due, or due within
                 `org-deadline-warning-days'.  The listing occurs only
                 in the diary for *today*, not at any other date.

   :todo         List all TODO items from the org-file.  This may be a
                 long list - so this is not turned on by default.
                 Like deadlines, these entires only show up in the
                 diary for *today*, not at any other date.

The call in the diary file should look like this:

   &%%(org-diary) ~/path/to/some/orgfile.org

Use a separate line for each org file to check.

If you don't give any arguments (as in the example above), the default
arguments (:timestamp :deadline) are used.  So the example above may
also be written as

   &%%(org-diary :timestamp :deadline) ~/path/to/some/orgfile.org

\(fn &rest ARGS)" nil nil)

;;;***

;;;### (autoloads nil nil ("auto-complete/auto-complete-config.el"
;;;;;;  "auto-complete/auto-complete-pkg.el" "el-get/el-get-autoloads.el"
;;;;;;  "el-get/el-get-build.el" "el-get/el-get-byte-compile.el"
;;;;;;  "el-get/el-get-core.el" "el-get/el-get-custom.el" "el-get/el-get-dependencies.el"
;;;;;;  "el-get/el-get-install.el" "el-get/el-get-methods.el" "el-get/el-get-notify.el"
;;;;;;  "el-get/el-get-recipes.el" "el-get/el-get-status.el" "fuzzy/fuzzy.el"
;;;;;;  "popup/popup.el") (21235 324 803582 0))

;;;***

(provide '.loaddefs)
;; Local Variables:
;; version-control: never
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; .loaddefs.el ends here
