;;; .Emacs file for Mike Panitz
;;;

;; how to exclude a dir or file from DropBox:
;; https://superuser.com/a/1521834/116727
;; How to set up per-computer config: use hostname:
;;;;; https://nicolas.petton.fr/blog/per-computer-emacs-settings.html


;; Debugging tips
;; (toggle-debug-on-error) ;; to get a full stack trace on error

;; Lookup later

;;;; Breadcrumb (bookmarking)
;; https://github.com/pheaver/breadcrumb
;;(use-package breadcrumb
;;  :ensure t
;;  :after hydra
;;  :config
;;  (message "Hi")
;;  )
;; https://github.com/abo-abo/hydra/wiki/Breadcrumb

;;;; https://github.com/emacscollective/no-littering
;; Keeps .emacs.d clean
;; They said that they're eagerly accepting contributions

;;; Useful stuff that I keep forgetting
;; Find source code for an extension: M-x find-library
;; Zoom a buffer: C-x C-+ or C-x C-=  (increase), C-x C--, then +/-/0 to zoom from 

;;;; Here is how to define a keyboard macro:

;; `C-x ( ’ or <f3>– start defining a keyboard macro
;; 	   `C-x )’ or <f4>– stop defining the keyboard macro
;; And here is how to execute a keyboard macro you’ve defined:

;; ‘C-x e’ or <f4> – execute the keyboard macro
;; Here’s how to execute the macro 37 times (you use ‘C-u’ to provide the 37):

;; ‘C-u 37 C-x e’


;;;; Rectangular text:

;; ‘C-x <SPC>’
;; Toggle Rectangle Mark mode (‘rectangle-mark-mode’).  When this mode
;; is active, the region-rectangle is highlighted and can be
;; shrunk/grown, and the standard kill and yank commands operate on
;; it.

;; ‘C-x r k’
;; Kill the text of the region-rectangle, saving its contents as the
;; last killed rectangle (‘kill-rectangle’).

;; ‘C-x r d’
;; Delete the text of the region-rectangle (‘delete-rectangle’).

;; ‘C-x r y’
;; Yank the last killed rectangle with its upper left corner at point
;; (‘yank-rectangle’).

;; ‘C-x r o’
;; Insert blank space to fill the space of the region-rectangle
;; (‘open-rectangle’).  This pushes the previous contents of the
;; region-rectangle to the right.

;; ‘C-x r N’
;; Insert line numbers along the left edge of the region-rectangle
;; (‘rectangle-number-lines’).  This pushes the previous contents of
;; the region-rectangle to the right.

;;; Perf stuff
;;(package-initialize)
;;(require 'benchmark-init)
;; To disable collection of benchmark data after init is done.
;;(add-hook 'after-init-hook 'benchmark-init/deactivate)

;; From https://blog.d46.us/advanced-emacs-startup/
;; How fast can I make startup?
;; just loading this init file (without the org-babel) takes about .5 seconds
;; customize takes another second
;; normal startup time is 2.2-ish seconds
;; so without some serious magic (and giving up org-babel, customize, etc) isn't not going to get me much
;; Plus, I'm already using server + emacsclient
;; (org-babel-load-file "~/.emacs.d/config.org")

;; Make startup faster by reducing the frequency of garbage
;; collection.  The default is 800 kilobytes.  Measured in bytes.
(setq gc-cons-threshold (* 100 1000 1000))
(add-hook 'emacs-startup-hook
	  (lambda ()
	    (message "Emacs ready in %s with %d garbage collections."
		     (format "%.2f seconds"
			     (float-time
			      (time-subtract after-init-time before-init-time)))
		     gcs-done)
	    ;; ;; Make gc pauses faster by decreasing the threshold.
	    (setq gc-cons-threshold (* 2 1000 1000))
	    ))

;; Since keeping my config file in an org file was slowing startup down
;; (org-babel-load-file takes about .5 seconds)
;; (and since I wasn't doing the literate coding thing anyways)
;; I removed it.
;; I'll keep it here in the name of 'perf'
;;(setq org-element-use-cache nil)
;;(org-babel-load-file "~/.emacs.d/configuration.org")

;;; packages (incl. use-package)

(add-to-list 'load-path "~/.emacs.d/MyPackages")

;; (setq package-archives '(("melpa-stable" . "https://stable.melpa.org/packages/")
;; 			 ("gnu" . "http://elpa.gnu.org/packages/")
;; 			 ("orgmode" . "http://orgmode.org/elpa/")
;;                          ("marmalade" . "https://marmalade-repo.org/packages/") ))

;; ;;(require 'package) ;; /doesn't seem to be required
;; (package-initialize)

;; (unless (package-installed-p 'use-package)
;;   (package-refresh-contents)
;;   (package-install 'use-package))

;; (setq use-package-verbose t)

;; ;; from https://github.com/jwiegley/use-package
;; ;; This is only needed once, near the top of the file
;;(eval-when-compile
;;   ;; Following line is not needed if use-package.el is in ~/.emacs.d
;;   (add-to-list 'load-path "C:\\MikesStuff\\Pers\\Dropbox\\Personal\\home\\.emacs.d\\elpa\\use-package-2.3\\")
;;   (require 'use-package))


;;; straight.el - package manager that works via GitHub

(defvar bootstrap-version)

;; move the straight build dir / temp dir outside of DropBox, so it doesn't get replicated across OS's)
;; (setq straight-base-dir "~/emacs_straight/") ;; instead of moving this, use git to hold dotfiles and then ignore the straight dir
(setq straight-repository-branch "develop")
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(straight-use-package 'use-package)

;; Put this here so we can load org before customize
(setq straight-use-package-by-default t)

;;; computer-specific config

(let* (
       (host (downcase (substring (shell-command-to-string "hostname") 0 -1)))
       (host-dir (concat "~/.emacs.d/Computer_Specific_Config_Files/" host ))
       (init-host-feature (concat host-dir "/init.el")))

  (message (concat "host: " host " host-dir: " host-dir))

  (if (not (file-directory-p host-dir))
      (make-directory host-dir t) ;; t means "create parents if needed"
    (message "ERROR: No config files for this computer!")
    )

  (if (file-exists-p init-host-feature)
      (load init-host-feature)
    )
  (setq recentf-save-file (concat host-dir "/.recentf"))
  (setq bookmark-default-file (concat host-dir "/BookMarks.txt"))
  (message (concat "Loaded computer-specific info from\n\t" init-host-feature "\n\trecentf: " recentf-save-file "\n\tbookmarks: " bookmark-default-file))
  )

;; EMACCS_COMPUTER_SPECIFIC_CONFIG should be an environment variable
;; which holds the directory of the init.el, .recentf, etc, that's specific to this computer
;; This allows us to define DROPBOX_ROOT, and STUDENT_WORK_ROOT, so that
;; they can live at different places on differnt computers

;; (setq COMPUTER_SPECIFIC_DIR (getenv "EMACS_COMPUTER_SPECIFIC_CONFIG") )
;; (message COMPUTER_SPECIFIC_DIR)
;; (load (concat COMPUTER_SPECIFIC_DIR "/init.el") )
;; (message (concat "STUDENT_WORK_ROOT: " STUDENT_WORK_ROOT))
;; (setq recentf-save-file (concat COMPUTER_SPECIFIC_DIR "/.recentf"))
;; (setq bookmark-default-file (concat COMPUTER_SPECIFIC_DIR "/BookMarks.txt"))

;;; Move customize.el settings to a separate file

(setq custom-file "~/.emacs.d/DataFiles/customize.el")
(load custom-file)

;;; Org-mode, outline

;; https://github.com/Wilfred/remacs/issues/670
;; NOTE: This was put at the top of init.el,
;; to avoid having that problem with the org-based part of my config files
(setq org-element-use-cache nil)

(setq org-directory (concat DROPBOX_ROOT "/Personal/OrgMode"))
(customize-set-variable 'org-agenda-files
			(list (concat DROPBOX_ROOT "/Personal/OrgMode/Teaching.org")
                              (concat DROPBOX_ROOT "/Personal/OrgMode/Personal.org")
			      (concat DROPBOX_ROOT "/Personal/OrgMode/Union.org")
			      (concat DROPBOX_ROOT "/Personal/OrgMode/Wait For.org")
			      )
			)

(use-package org
  ;;  :defer 2
  :demand
  :bind (
         ("C-c t" . org-show-todo-tree)
         ("C-c l" . org-store-link)
         ("C-c c" . org-capture)
         ("C-c a" . org-agenda)
;;	 ("M-<ins>" . org-shiftmetadown)
	 ("M-=" . org-ctrl-c-minus)
         )
  :config
  (setq org-support-shift-select t)

  ;; From https://writequit.org/denver-emacs/presentations/2017-04-11-time-clocking-with-org.html:
  ;; Show lot of clocking history so it's easy to pick items off the `C-c I` list
  (setq org-clock-history-length 23)

  (defun eos/org-clock-in ()
    (interactive)
    (org-clock-in '(4)))

  (global-set-key (kbd "C-c I") #'eos/org-clock-in)
  (global-set-key (kbd "C-c O") #'org-clock-out)

  ;; Resume clocking task when emacs is restarted
  (org-clock-persistence-insinuate)
  ;; Save the running clock and/or all clock history when exiting Emacs, load it on startup
  ;; 'history means to just load the clocking history and NOT restore the running clock
  (setq org-clock-persist 'history)

  ;; Resume clocking task on clock-in if the clock is open
  ;;(setq org-clock-in-resume t)
  ;; Do not prompt to resume an active clock, just resume it
  ;;(setq org-clock-persist-query-resume nil)

  ;; Change tasks to whatever when clocking in
  ;;(setq org-clock-in-switch-to-state "NEXT")
  ;; Save clock data and state changes and notes in the LOGBOOK drawer
  (setq org-clock-into-drawer t)
  ;; Sometimes I change tasks I'm clocking quickly - this removes clocked tasks
  ;; with 0:00 duration
  (setq org-clock-out-remove-zero-time-clocks t)
  ;; Clock out when moving task to a done state
  (setq org-clock-out-when-done t)
  ;; Enable auto clock resolution for finding open clocks
  (setq org-clock-auto-clock-resolution (quote when-no-clock-is-running))
  ;; Include current clocking task in clock reports
  (setq org-clock-report-include-clocking-task t)
  ;; use pretty things for the clocktable
  (setq org-pretty-entities t)
  :init

  (defun org-add-my-extra-fonts ()
    "Add alert and overdue fonts."

    (defface org-my-highlight-yellow '((t (:foreground "midnightblue" :background "LemonChiffon"))) "")
    (defface org-my-highlight-green '((t (:foreground "black" :background "medium sea green"))) "")

    (add-to-list 'org-font-lock-extra-keywords '("\\(![^\n\r\t]+!\\)" (1 'org-my-highlight-yellow) ))
    ;;    (add-to-list 'org-font-lock-extra-keywords '("\\(!![^\n\r\t]+!!\\)" (1 'org-my-highlight-green) ))

    ;; (add-to-list 'org-font-lock-extra-keywords '("\\(!\\)\\([^\n\r\t]+\\)\\(!\\)" (1 '(face test-face invisible t)) (2 'test-face) (3 '(face test-face invisible t))))
    ;;    (add-to-list 'org-font-lock-extra-keywords '("\\(%\\)\\([^\n\r\t]+\\)\\(%\\)" (1 '(face org-habit-overdue-face invisible t)) (2 'org-habit-overdue-face) (3 '(face org-habit-overdue-face invisible t))))
    )

  (add-hook 'org-font-lock-set-keywords-hook #'org-add-my-extra-fonts)

  ;; The following is copied from
  ;; https://github.com/raxod502/radian/blob/ee92ea6cb0473bf7d20c6d381753011312ef4a52/radian-emacs/radian-org.el#L46-L112

  ;; This section is devoted to fixing the asinine version-check
  ;; handling in Org (it's not designed to handle the case where you
  ;; run straight from the Git repo, apparently). This is one of the
  ;; worse hacks I've ever had the misfortune to create in Emacs.

  ;; First we define a function to return a proper version string
  ;; based on the Git repo. (This is somewhat similar to what happens
  ;; in org-fixup.el.) We should really define a function that will
  ;; return the latest tag, as well, but this remains a FIXME for now.
  (defun radian--org-git-version ()
    "Return the abbreviated SHA for the Org Git repo."
    (let ((default-directory (concat user-emacs-directory
                                     "straight/repos/org/")))
      (if (executable-find "git")
          (with-temp-buffer
            ;; Returns the shortest prefix of the SHA for HEAD that is
            ;; unique, down to a minimum of 4 characters (see
            ;; git-rev-parse(1)).
            (call-process "git" nil '(t nil) nil
                          "rev-parse" "--short" "HEAD")
            (if (> (buffer-size) 0)
                (string-trim (buffer-string))
              ;; This shouldn't happen, unless somehow Org is not
              ;; actually a Git repo.
              "revision unknown"))
        ;; This also shouldn't happen, because how would you have
        ;; gotten Org in the first place, then? But the real world
        ;; sucks and we have to account for stuff like this.
        "git not available")))

  ;; Here we're defining `org-git-version' and `org-release' eagerly.
  ;; Pay close attention here, since we actually do this multiple
  ;; times. The control flow is really weird. The reason we define the
  ;; functions here is that Emacs includes its own copy of Org, and
  ;; these functions are autoloaded by Emacs. Now, normally the
  ;; built-in autoloads are overridden by the version of Org
  ;; downloaded from EmacsMirror, but since we're running straight
  ;; from the Git repo, `org-git-version' and `org-release' are not
  ;; generated and autoloaded. So in order to avoid the original
  ;; autoloads from being triggered under any circumstances, we have
  ;; to overwrite them here.
  (defalias #'org-git-version #'radian--org-git-version)
  (defun org-release () "N/A") ; FIXME: replace with a real function

  ;; Now, the culprit function is `org-check-version', which is
  ;; defined in org-compat.el and called from org.el. The problem with
  ;; this function is that if the version of Org in use is not a
  ;; release version (i.e. it's running straight from the repo, as we
  ;; are doing), then it prints a warning. We don't want this. The
  ;; natural thought is to override `org-check-version'.
  ;; Unfortunately, this is completely impossible since
  ;; `org-check-version' is a macro, and org.el (which is where the
  ;; macro is used) is byte-compiled, so the code of
  ;; `org-check-version' is hardcoded into org.elc. The easiest way
  ;; around the problem, other than doing something even more
  ;; horrifying like suppressing warnings while loading Org, seems to
  ;; be to *pretend* that org-version.el is available, even though it
  ;; doesn't exist. Then `org-check-version' happily defines
  ;; `org-git-version' and `org-release' as autoloads pointing to
  ;; org-version.el. Of course, then after Org is loaded, we have to
  ;; override those autoloads to make the functions point back to what
  ;; we want. Right now, the definition of `org-release' generated by
  ;; `org-check-version' is the same as the one used above, so we
  ;; don't bother to change it. That should change, FIXME.
  (provide 'org-version)
  (with-eval-after-load 'org
    (defalias #'org-git-version #'radian--org-git-version))
  )

(use-package org-bullets
  ;; :ensure t
  :demand
  ;; :after org
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
  )

;; https://github.com/alphapapa/helm-org-rifle#usage
;; (use-package helm-org-rifle
;;   ;; :ensure t
;;   )

(use-package outorg
  :after org
  :demand
  ;; :disabled
  ;; :ensure t
  )

(use-package outline
  ;; :ensure t ;; don't think I need this - it's built into
  ;;:init
  ;;    (defvar outline-minor-mode-prefix "\M-#")
  :config
                ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; outline-mode-easy-bindings.el (2010-08-15)
  ;;
  ;; Outlines can be managed entirely with Meta + <arrow key>.
  ;;
  ;; Installation: Store this file as outline-mode-easy-bindings.el
  ;; somewhere in your load-path and create hooks for outline modes to
  ;; load this automatically, for example:

  ;;     (add-hook 'outline-mode-hook 'my-outline-easy-bindings)
  ;;     (add-hook 'outline-minor-mode-hook 'my-outline-easy-bindings)
  ;;
  ;;     (defun my-outline-easy-bindings ()
  ;;       (require 'outline-mode-easy-bindings nil t))


  (defun outline-body-p ()
    (save-excursion
      (outline-back-to-heading)
      (outline-end-of-heading)
      (and (not (eobp))
           (progn (forward-char 1)
                  (not (outline-on-heading-p))))))

  (defun outline-body-visible-p ()
    (save-excursion
      (outline-back-to-heading)
      (outline-end-of-heading)
      (not (outline-invisible-p))))

  (defun outline-subheadings-p ()
    (save-excursion
      (outline-back-to-heading)
      (let ((level (funcall outline-level)))
        (outline-next-heading)
        (and (not (eobp))
             (< level (funcall outline-level))))))

  (defun outline-subheadings-visible-p ()
    (interactive)
    (save-excursion
      (outline-next-heading)
      (not (outline-invisible-p))))

  (defun outline-hide-more ()
    (interactive)
    (when (outline-on-heading-p)
      (cond ((and (outline-body-p)
                  (outline-body-visible-p))
             (hide-entry)
             (hide-leaves))
            (t
             (hide-subtree)))))

  (defun outline-show-more ()
    (interactive)
    (when (outline-on-heading-p)
      (cond ((and (outline-subheadings-p)
                  (not (outline-subheadings-visible-p)))
             (show-children))
            ((and (not (outline-subheadings-p))
                  (not (outline-body-visible-p)))
             (show-subtree))
            ((and (outline-body-p)
                  (not (outline-body-visible-p)))
             (show-entry))
            (t
             (show-subtree)))))

  (let ((map outline-mode-map))
    (define-key map (kbd "M-<left>") 'outline-hide-more)
    (define-key map (kbd "M-<right>") 'outline-show-more)
    (define-key map (kbd "M-<up>") 'outline-previous-visible-heading)
    (define-key map (kbd "M-<down>") 'outline-next-visible-heading)
    ;; (define-key map (kbd "C-c J") 'outline-hide-more)
    ;; (define-key map (kbd "C-c L") 'outline-show-more)
    ;; (define-key map (kbd "C-c I") 'outline-previous-visible-heading)
    ;; (define-key map (kbd "C-c K") 'outline-next-visible-heading)
    )

  (let ((map outline-minor-mode-map)) 
    (define-key map (kbd "M-<left>") 'outline-hide-more)
    (define-key map (kbd "M-<right>") 'outline-show-more)
    (define-key map (kbd "M-<up>") 'outline-previous-visible-heading)
    (define-key map (kbd "M-<down>") 'outline-next-visible-heading)
    ;;   (define-key map (kbd "C-c J") 'outline-hide-more)
    ;;   (define-key map (kbd "C-c L") 'outline-show-more)
    ;;   (define-key map (kbd "C-c I") 'outline-previous-visible-heading)
    ;;   (define-key map (kbd "C-c K") 'outline-next-visible-heading)
    )


  ;;  (global-set-key (kbd "C-c #") 'hydra-outline/body) ; by example

  ;; ; Outline-minor-mode key map
  ;;  (define-prefix-command 'cm-map nil "Outline-")
  ;;  ; HIDE
  ;;  (define-key cm-map "q" 'hide-sublevels)    ; Hide everything but the top-level headings
  ;;  (define-key cm-map "t" 'hide-body)         ; Hide everything but headings (all body lines)
  ;;  (define-key cm-map "o" 'hide-other)        ; Hide other branches
  ;;  (define-key cm-map "c" 'hide-entry)        ; Hide this entry's body
  ;;  (define-key cm-map "l" 'hide-leaves)       ; Hide body lines in this entry and sub-entries
  ;;  (define-key cm-map "d" 'hide-subtree)      ; Hide everything in this entry and sub-entries
  ;;  ; SHOW
  ;;  (define-key cm-map "a" 'outline-show-all)          ; Show (expand) everything
  ;;  (define-key cm-map "e" 'show-entry)        ; Show this heading's body
  ;;  (define-key cm-map "i" 'show-children)     ; Show this heading's immediate child sub-headings
  ;;  (define-key cm-map "k" 'show-branches)     ; Show all sub-headings under this heading
  ;;  (define-key cm-map "s" 'show-subtree)      ; Show (expand) everything in this heading & below
  ;;  ; MOVE
  ;;  (define-key cm-map "u" 'outline-up-heading)                ; Up
  ;;  (define-key cm-map "n" 'outline-next-visible-heading)      ; Next
  ;;  (define-key cm-map "p" 'outline-previous-visible-heading)  ; Previous
  ;;  (define-key cm-map "f" 'outline-forward-same-level)        ; Forward - same level
  ;;  (define-key cm-map "b" 'outline-backward-same-level)       ; Backward - same level
  ;;  (global-set-key "\M-o" cm-map)
  )

;; This doesn't install correctly unless outorg is installed first
(use-package outshine
  ;; :ensure t
  ;;:disabled
  :demand
  :after (outline outorg)
  :config
  (add-hook 'outline-minor-mode-hook 'outshine-mode)
  (add-hook 'prog-mode-hook 'outline-minor-mode)
  )

(use-package navi-mode
  :after (outshine)
  )
;;; General Emacs config

(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; I'm the only one editing my files, 
;; so stop putting the lock files ("#file.txt") everywhere
;; This is good to keep, in case I have multiple emacs going
;; (setq create-lockfiles nil)

;; Turn on auto-indenting for emacs mode
;; The following always generates 'Error (use-package): Cannot load aggressive-indent-mode'
;;(use-package aggressive-indent-mode)
;; (use-package aggressive-indent-mode
;;   :straight (
;; 	     :host github
;;   	     :repo "Malabarba/aggressive-indent-mode"
;; 	     :branch "master"
;; 	     )
;;   )

(load-library "aggressive-indent.el")
(add-hook 'emacs-lisp-mode-hook #'aggressive-indent-mode)
(add-hook 'javascript-mode-hook #'aggressive-indent-mode)
(add-hook 'csharp-mode-hook #'aggressive-indent-mode)
(add-hook 'web-mode-hook #'aggressive-indent-mode)

;; TODO: Can I drag the screen via touch?
;; (require 'grab-and-drag)
;; (grab-and-drag-mode 0)

;;; Undo

;;;; undo-tree:
;; Tl;dr:
;; undo: "C-/"
;; redo: "C-?" (a.k.a. C-S-/)
;; browse the undo tree: "M-/"

(use-package undo-tree
;;  :demand
  :bind
  (("C-/" . 'undo)
   ("C-?" . 'undo-tree-redo)
   ("M-/" . 'undo-tree-visualize)
   )
  :config
  ;;turn on everywhere
  (global-undo-tree-mode 1)
  ;; (global-set-key (kbd "C-/") 'undo)
  ;; (global-set-key (kbd "C-?") 'undo-tree-redo)
  ;; (global-set-key (kbd "M-/") 'undo-tree-visualize)
  )

;;;; undo-browse:
;; Tl;dr:
;; undo: "C-/"
;; redo: "C-?"
;; enter ub-mode (browse history frames): "M-/"

;; (use-package undo-browse
;;   ;;  :defer 2
;;   :demand
;;   :config
;;   ;; The following is lifted heavily from (ub-install-deego)

;;   (defun my-ub-undo ()
;;     (interactive)

;;     ;; should we cause any changes to be lost, make a backup first if
;;     ;; the user uses mkback.

;;     ;; Mimic C-_'s behavior.. so go back one frame upon invocation.

;;     (let ( ;; temporary hooks so that ub-mode-on does a single 'frame-backward
;; 	  (ub-mode-on-user-hook
;; 	   (list  'ub-mkback-buffer
;; 		  'ub-frame-backward))
;; 	  ;; then, when we quit ub-mode we'll retain the future for undo purposes
;; 	  (ub-mode--retain-type 'retain-redo))
;;       (ub-mode-on)
;;       ;; want do do this, but without the confirmation:
;;       ;; (ub-frame-retain-redo)
;;       (ub-mode-quit)
;;       )
;;     )
;;   (defun my-ub-redo ()
;;     (interactive)

;;     ;; should we cause any changes to be lost, make a backup first if
;;     ;; the user uses mkback.

;;     ;; Mimic C-_'s behavior.. so go back one frame upon invocation.

;;     ;; Same logic as from my-ub-undo
;;     (let ((ub-mode--retain-type 'retain-redo)
;; 	  (ub-mode-on-user-hook
;; 	   (list  'ub-mkback-buffer
;; 		  'ub-frame-forward)))
;;       (ub-mode-on)
;;       ;; want do do this, but without the confirmation:
;;       ;; (ub-frame-retain-redo)
;;       (ub-mode-quit)
;;       )
;;     )
;;   (global-set-key (kbd "C-/") 'my-ub-undo)
;;   (global-set-key (kbd "C-?") 'my-ub-redo)
;;   (global-set-key (kbd "M-/") 'ub-mode)
;;   )

;;; Windows-related

(setq cua-auto-tabify-rectangles nil) ;; Don't tabify after rectangle commands
(setq cua-keep-region-after-copy t) ;; Standard Windows behaviour
(setq cua-enable-cua-keys nil)
;;(cua-mode t)

;; Windows-y keybindings:
;; (global-set-key "\C-a" 'mark-whole-buffer)
;; (global-set-key "\C-o" 'find-file)
(global-set-key (kbd "C-z") 'undefined)
(global-set-key (kbd "C-v") 'undefined)
(global-set-key [M-f4] 'save-buffers-kill-emacs)

(transient-mark-mode 1) ;; No region when it is not highlighted

;; Define a 'close all buffers' command
(defun close-all-buffers ()
  "This will attempt to close all the buffers in the buffer-list, using the kill-buffer function"
  (interactive)
  (mapc 'kill-buffer (buffer-list))
  )

(global-set-key (kbd "C-S-k") 'close-all-buffers )
(global-set-key (kbd "C-k") 'kill-this-buffer)
;; Org mode changes C-k, so I'mma change it back :)
(add-hook 'org-mode-hook '(lambda () (local-set-key (kbd "C-k") 'kill-this-buffer) ) )

;; tried to rebind left-alt (Meta)-Space, N to 'minimize window'
;; This produces an error M-SPC isn't a prefix key
;; so we need to unbind that first, so we can use it as a
;; prefix key
(global-unset-key (kbd "M-SPC"))
(global-set-key (kbd "M-SPC n") 'suspend-frame )
(global-set-key (kbd "M-SPC M-n") 'suspend-frame )

;; same as the immediatey previous, except that it's all being 'done by hand'
;; (define-prefix-command 'keymap-meta-space)
;; (global-set-key (kbd "M-SPC") 'keymap-meta-space )
;; (define-key keymap-meta-space (kbd "n") 'suspend-frame)
;; Next line is in case I don't let up on the Meta key fast enough :)
;; (define-key keymap-meta-space (kbd "M-n") 'suspend-frame)

;;; Key bindings

(global-set-key (kbd "<C-wheel-up>") 'text-scale-increase)
(global-set-key (kbd "<C-wheel-down>") 'text-scale-decrease)

(global-set-key [C-tab] 'other-window)

;;(local-set-key [C-S-s] 'isearch-forward-symbol-at-point)
;; (global-unset-key [C-S-s])
(global-set-key (kbd "C-S-s") 'isearch-forward-symbol-at-point)
;; (define-key key-translation-map (kbd "C-S-s") (lambda() (interactive) (isearch-forward-symbol-at-point)))

;; make PC keyboard's Win key or other to type Super or Hyper, for emacs running on Windows.
;; (setq w32-pass-lwindow-to-system nil)
;; (setq w32-lwindow-modifier 'super) ; Left Windows key

;;(setq w32-pass-rwindow-to-system nil)
;;(setq w32-rwindow-modifier 'super) ; Right Windows key

(setq w32-pass-apps-to-system nil)
(setq w32-apps-modifier 'hyper) ; Menu/App key

;; scroll one line at a time (less "jumpy" than defaults)
;; From https://www.emacswiki.org/emacs/SmoothScrolling
(setq mouse-wheel-scroll-amount '(3 ((shift) . 1))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(setq scroll-step 1) ;; keyboard scroll one line at a time


;; This isn't needed b/c I've got aggressive indent mode on
;; (define-key global-map (kbd "RET") 'newline-and-indent) ; For programming language modes

;; I'd like to be able to flip through buffers
;; using C-PageUp/C-PageDown:
;;
;; (global-set-key [C-next] 'next-buffer)
;; (global-set-key [C-prior] 'previous-buffer)

;; Use dash to filter out boring buffers from buffer-stack
;; buffer-stack-filter-exclusive-regexp is defined in buffer-stack
;; (use-package dash
;;   ;; :ensure t
;;   :defer 1
;;   :config
;;   (defun buffer-stack-filter-exclusive-regexp (buffer)
;;     "Non-nil if buffer is not in buffer-stack-untracked or a 'hidden' buffer."
;;     (let ((name (buffer-name buffer)))
;;       (not (or (not (buffer-stack-filter-exclusive buffer))
;;                (-any (lambda(next-regexp) (string-match next-regexp name) ) buffer-stack-untracked) ) ) 
;;       ) )
;;   )


;; (use-package buffer-stack
;;   ;; :ensure t
;;   :after dash
;;   :defer 1
;;   :config
;;   (global-set-key (kbd "C-S-<up>") 'buffer-stack-up)
;;   (global-set-key (kbd "C-S-<down>") 'buffer-stack-down)
;;   (add-hook 'org-mode-hook '(lambda () (local-set-key (kbd "C-S-<up>") 'buffer-stack-up) ) )
;;   (add-hook 'org-mode-hook '(lambda () (local-set-key (kbd "C-S-<down>") 'buffer-stack-down) ) )
;;   (global-set-key [(f12)] 'buffer-stack-track)
;;   (global-set-key [(control f12)] 'buffer-stack-untrack)

;;   (defun buffer-stack-show-position-several-buffers (buffer-stack-index buffer-stack)
;;     "Show position like this: ⬆ *Previous Buffer* ▶ *Current Buffer* ◀ ⬇ *Next Buffer*"
;;     (let (up-buffer-index
;;           down-buffer-index
;;           (max-index (- (length buffer-stack) 1)))
;;       (if (eq buffer-stack-index 0)
;;           (setq up-buffer-index max-index)
;; 	(setq up-buffer-index (- buffer-stack-index 1)))
;;       (if (eq buffer-stack-index max-index)
;;           (setq down-buffer-index 0)
;; 	(setq down-buffer-index (+ buffer-stack-index 1)))

;;       (message (concat " ⬆ "
;; 		       (buffer-name (nth up-buffer-index buffer-stack))
;;                        (propertize (concat " ▶ "
;; 					   (buffer-name (nth buffer-stack-index buffer-stack))
;; 					   " ◀ " )
;; 				   'face '(:foreground "yellow"))
;; 		       " ⬇ "
;;                        (buffer-name (nth down-buffer-index buffer-stack))
;; 		       ))
;;       ))


;;   (defun buffer-stack-show-position-all-buffers (buffer-stack-index buffer-stack-param)
;;     "Show position like this: ⬆ *Previous Buffer* ▶ *Current Buffer* ◀ ⬇ *Next Buffer*"
;;     (message (buffer-stack-show-position-all-buffers-string))
;;     )

;;   (defun buffer-stack-show-position-all-buffers-string ()
;;     ;; Gonna ignore both params so I can use this in my mode-line, too
;;     (let (
;;           (max-index (- (length buffer-stack) 1))
;; 	  (counter 0)
;; 	  szOutput
;; 	  )
;; ;;      (message "START\n\tbuffer-stack-index: %s" buffer-stack-index)
;;       (while (< counter (length buffer-stack))
;; 	(let (
;; 	      (current-stack-buffer-name  (buffer-name (nth counter buffer-stack)))
;; 	      (divider (if (and (/= counter buffer-stack-index)
;; 	      			(/= counter (+ buffer-stack-index 1) )
;; 				)
;; 			   (cond
;; 			    ( (< counter buffer-stack-index) " ⬆ ")
;; 			    ( (> counter buffer-stack-index) " ⬇ ")
;; 			    )
;; 			 ""
;; 			 )
;; 		       )
;; 	       divider-extra-last-one
;; 	      )
;; ;;	  (message "cur: %s at: %s" (buffer-name (current-buffer)) current-stack-buffer-name)
;; 	  (if ;; (= counter buffer-stack-index)
;; 	      (= counter buffer-stack-index)
;; 	      (setq current-stack-buffer-name (propertize
;; 					   (concat " ▶ "
;; 						   current-stack-buffer-name
;;      						   " ◀ " )
;; 					   'face '(:foreground "orange")))
;; 	    (if (= counter max-index) (setq divider-extra-last-one " ⬇ "))
;; 	  )
;; ;;	(message current-stack-buffer-name)
;; 	(setq szOutput (concat szOutput divider current-stack-buffer-name divider-extra-last-one))
;; 	(setq counter (+ counter 1))
;; 	)
;;       )
;; ;;    (message "END")
;;     szOutput ;; eval to the string
;;     )
;;   )

;;;;  tabbar
;; Examples of rules to group tabs:
;; https://emacs.stackexchange.com/questions/10081/browser-style-tabs-for-emacs

(use-package tabbar
  :bind
  ;;("<C-S-iso-lefttab>" . tabbar-backward)
  ;;("<C-tab>" . tabbar-forward)
  ("C-<next>" . tabbar-forward-tab)
  ("C-<prior>" . tabbar-backward-tab)
  ("C-S-<next>" . tabbar-forward-group)
  ("C-S-<prior>" . tabbar-backward-group)

  :config

  ;; Provide a list of regexps's to ID buffers to exclude
  ;; Copied from https://www.emacswiki.org/emacs/TabBarMode#toc12
  ;; then modified to accept regexp's instead
  (setq tabbar-ignore-buffers '("*helm" "Echo" "Minibuf" "*code" "\\*[^MC].*\\*" "*Custom-" "KILL" "*Compile-Log*" "*Compile-Log-Show*" "*Group*" "*Completions*"))
  (setq tabbar-buffer-list-function
        (lambda ()
          (remove-if
           (lambda (buffer)
             (and (not (eq (current-buffer) buffer)) ; Always include the current buffer.
                  (loop for name in tabbar-ignore-buffers ;remove buffer name in this list.
                        thereis (string-match name (buffer-name buffer) ))))
           (buffer-list))))

  (set-face-attribute
   'tabbar-button nil
   :box '(:line-width 1 :color "gray19"))

  (set-face-attribute
   'tabbar-selected nil
   :foreground "limegreen"
   :background "gray19"
   :box '(:line-width 1 :color "gray19"))

  (set-face-attribute
   'tabbar-unselected nil
   :foreground "gray75"
   :background "gray25"
   :box '(:line-width 1 :color "gray19"))

  (set-face-attribute
   'tabbar-highlight nil
   :foreground "black"
   :background "limegreen"
   :underline nil
   :box '(:line-width 1 :color "gray19" :style nil))

  (set-face-attribute
   'tabbar-modified nil
   :foreground "violetred3"
   :background "gray25"
   :box '(:line-width 1 :color "gray19"))

  (set-face-attribute
   'tabbar-selected-modified nil
   :foreground "violetred3"
   :background "gray19"
   :box '(:line-width 1 :color "gray19"))

  (custom-set-variables
   '(tabbar-separator (quote (0.2))))

  ;; Change padding of the tabs
  ;; we also need to set separator to avoid overlapping tabs by highlighted tabs
  ;; (custom-set-variables
  ;;  '(tabbar-separator (quote (1.0))))
  (defun tabbar-buffer-tab-label (tab)
    "Return a label for TAB.
  That is, a string used to represent it on the tab bar."
    (let ((label  (if tabbar--buffer-show-groups
		      (format " [%s] " (tabbar-tab-tabset tab))
                    (format " %s " (tabbar-tab-value tab)))))
      ;; Unless the tab bar auto scrolls to keep the selected tab
      ;; visible, shorten the tab label to keep as many tabs as possible
      ;; in the visible area of the tab bar.
      (if tabbar-auto-scroll-flag
          label
        (tabbar-shorten
         label (max 1 (/ (window-width)
                         (length (tabbar-view
                                  (tabbar-current-tabset)))))))))

  (defun px-tabbar-buffer-select-tab (event tab)
    "On mouse EVENT, select TAB."
    (let ((mouse-button (event-basic-type event))
          (buffer (tabbar-tab-value tab)))
      (cond
       ((eq mouse-button 'mouse-2) (with-current-buffer buffer (kill-buffer)))
       ((eq mouse-button 'mouse-3) (pop-to-buffer buffer t))
       (t (switch-to-buffer buffer)))
      (tabbar-buffer-show-groups nil)))

  (defun px-tabbar-buffer-help-on-tab (tab)
    "Return the help string shown when mouse is onto TAB."
    (if tabbar--buffer-show-groups
        (let* ((tabset (tabbar-tab-tabset tab))
	       (tab (tabbar-selected-tab tabset)))
          (format "mouse-1: switch to buffer %S in group [%s]"
                  (buffer-name (tabbar-tab-value tab)) tabset))
      (format "\
mouse-1: switch to %S\n\
mouse-2: kill %S\n\
mouse-3: Open %S in another window"
	      (buffer-name (tabbar-tab-value tab))
	      (buffer-name (tabbar-tab-value tab))
	      (buffer-name (tabbar-tab-value tab)))))

  (defun px-tabbar-buffer-groups ()
    "Sort tab groups."
    (list (cond ((or
                  (eq major-mode 'dired-mode)
                  (string-equal "*" (substring (buffer-name) 0 1))) "emacs")
                (t "user"))))
  (setq tabbar-help-on-tab-function 'px-tabbar-buffer-help-on-tab
        tabbar-select-tab-function 'px-tabbar-buffer-select-tab
        tabbar-buffer-groups-function 'px-tabbar-buffer-groups)

  :init
  (tabbar-mode 1))

;; Recommended by:
;; https://emacsredux.com/blog/2018/11/09/an-easy-kill/
;;(cond (nil
(use-package easy-kill
  ;; :ensure t
  :config
  (global-set-key [remap kill-ring-save] #'easy-kill)
  (global-set-key [remap mark-sexp] #'easy-mark)

  :straight (:type git :host github ;; :repo "leoliu/easy-kill"
		   ;;		   :fork (:host github
		   :repo "MikeTheGreat/easy-kill")
  )
;;))

(use-package hydra
  ;; :ensure t
  :defer 5
  :after outline
  :bind (
         ("M-o" . hydra-base/body)
	 )
  )

(defhydra hydra-base ()
  "
_o_utline & outshine
_s_traight
_w_indow
"
  ("s" hydra-straight/body :exit t)
  ("w" hydra-window/body :exit t)
  ("o" hydra-outline/body :exit t)
  )

(use-package ace-window
  ;; :ensure t
  :defer 5
  )

;; Activate winner mode for quickly changing window sizes, etc
(when (fboundp 'winner-mode)
  (winner-mode 1))

(defhydra hydra-straight (:hint nil)
  "
_c_heck all       |_f_etch all     |_m_erge all      |_n_ormalize all   |p_u_sh all
_C_heck package   |_F_etch package |_M_erge package  |_N_ormlize package|p_U_sh package
----------------^^+--------------^^+---------------^^+----------------^^+------------||_q_uit||
_r_ebuild all     |_p_ull all      |_v_ersions freeze|_w_atcher start   |_g_et recipe
_R_ebuild package |_P_ull package  |_V_ersions thaw  |_W_atcher quit    |prun_e_ build"
  ("c" straight-check-all)
  ("C" straight-check-package)
  ("r" straight-rebuild-all)
  ("R" straight-rebuild-package)
  ("f" straight-fetch-all)
  ("F" straight-fetch-package)
  ("p" straight-pull-all)
  ("P" straight-pull-package)
  ("m" straight-merge-all)
  ("M" straight-merge-package)
  ("n" straight-normalize-all)
  ("N" straight-normalize-package)
  ("u" straight-push-all)
  ("U" straight-push-package)
  ("v" straight-freeze-versions)
  ("V" straight-thaw-versions)
  ("w" straight-watcher-start)
  ("W" straight-watcher-quit)
  ("g" straight-get-recipe)
  ("e" straight-prune-build)
  ("q" nil))

(defhydra hydra-window ()
  "
Movement^^        ^Split^         ^Switch^		^Resize^
----------------------------------------------------------------
_h_ ←       	_v_ertical    	_b_uffer		_q_ ←→ shrink
_j_ ↓        	_x_ horizontal	_f_ind files	_w_ ←→ grow
_k_ ↑        	_z_ undo      	_a_ce 1		_e_ ↑↓ shrink
_l_ →        	_Z_ reset      	_s_wap		_r_ ↑↓ grow
_F_ollow		_D_lt Other   	_S_ave		max_i_mize
_SPC_ cancel	_o_nly this   	_d_elete
"
  ("h" windmove-left )
  ("j" windmove-down )
  ("k" windmove-up )
  ("l" windmove-right )
  ("q" shrink-window-horizontally)
  ("w" enlarge-window-horizontally)
  ("e" shrink-window)
  ("r" enlarge-window)
  ("b" helm-mini)
  ("f" helm-find-files)
  ("F" follow-mode)
  ("a" (lambda ()
         (interactive)
         (ace-window 1)
         (add-hook 'ace-window-end-once-hook
                   'hydra-window/body))
   )
  ("v" (lambda ()
         (interactive)
         (split-window-right)
         (windmove-right))
   )
  ("x" (lambda ()
         (interactive)
         (split-window-below)
         (windmove-down))
   )
  ("s" (lambda ()
         (interactive)
         (ace-window 4)
         (add-hook 'ace-window-end-once-hook
                   'hydra-window/body)))
  ("S" save-buffer)
  ("d" delete-window)
  ("D" (lambda ()
         (interactive)
         (ace-window 16)
         (add-hook 'ace-window-end-once-hook
                   'hydra-window/body))
   )
  ("o" delete-other-windows)
  ("i" ace-maximize-window)
  ("z" (progn
         (winner-undo)
         (setq this-command 'winner-undo))
   )
  ("Z" winner-redo)
  ("SPC" nil)
  )


;; (defhydra hydra-git-gutter (:body-pre (git-gutter+-mode 1)
;;                             :hint nil)
;;   "
;; Git gutter:
;;   _j_: next hunk        _s_tage hunk     _q_uit
;;   _k_: previous hunk    _r_evert hunk    _Q_uit and deactivate git-gutter
;;   ^ ^                   _p_opup hunk
;;   _h_: first hunk
;;   _l_: last hunk
;; "
;; ;; set start _R_evision
;;   ("j" git-gutter+:next-hunk)
;;   ("k" git-gutter+:previous-hunk)
;;   ("h" (progn (goto-char (point-min))
;;               (git-gutter+:next-hunk 1)))
;;   ("l" (progn (goto-char (point-min))
;;               (git-gutter+:previous-hunk 1)))
;;   ("s" git-gutter+:stage-hunks)
;;   ("r" git-gutter+:revert-hunks)
;;   ("p" git-gutter+:popup-hunk)
;;   ;;("R" git-gutter:set-start-revision)
;;   ("q" nil :color blue)
;;   ("Q" (progn (git-gutter+-mode -1)
;;               ;; git-gutter-fringe doesn't seem to
;;               ;; clear the markup right away
;;               (sit-for 0.1)
;;               ;;(git-gutter:clear)
;;         )
;;        :color blue)
;; )

;; from https://www.reddit.com/r/emacs/comments/8of6tx/tip_how_to_be_a_beast_with_hydra/
(defhydra hydra-outline (:color blue :hint nil)
  "
    ^Hide^             ^Show^           ^Move
    ^^^^^^------------------------------------------------------
    _q_: sublevels     _a_: all         _u_: up
    _t_: body          _e_: entry       _n_: next visible
    _o_: other         _i_: children    _p_: previous visible
    _c_: entry         _k_: branches    _f_: forward same level
    _l_: leaves        _s_: subtree     _b_: backward same level
    _d_: subtree

    "
  ;; Hide
  ("q" hide-sublevels)    ; Hide everything but the top-level headings
  ("t" hide-body)         ; Hide everything but headings (all body lines)
  ("o" hide-other)        ; Hide other branches
  ("c" hide-entry)        ; Hide this entry's body
  ("l" hide-leaves)       ; Hide body lines in this entry and sub-entries
  ("d" hide-subtree)      ; Hide everything in this entry and sub-entries
  ;; Show
  ("a" show-all)          ; Show (expand) everything
  ("e" show-entry)        ; Show this heading's body
  ("i" show-children)     ; Show this heading's immediate child sub-headings
  ("k" show-branches)     ; Show all sub-headings under this heading
  ("s" show-subtree)      ; Show (expand) everything in this heading & below
  ;; Move
  ("u" outline-up-heading)                ; Up
  ("n" outline-next-visible-heading)      ; Next
  ("p" outline-previous-visible-heading)  ; Previous
  ("f" outline-forward-same-level)        ; Forward - same level
  ("b" outline-backward-same-level)       ; Backward - same level
  ("z" nil "leave")
  )

;; (defhydra hydra-clock (:color blue)
;;     "
;;     ^
;;     ^Clock^             ^Do^
;;     ^─────^─────────────^──^─────────
;;     _q_ quit            _c_ cancel
;;     ^^                  _d_ display
;;     ^^                  _e_ effort
;;     ^^                  _i_ in
;;     ^^                  _j_ jump
;;     ^^                  _o_ out
;;     ^^                  _r_ report
;;     ^^                  ^^
;;     "
;;     ("q" nil)
;;     ("c" org-clock-cancel :color pink)
;;     ("d" org-clock-display)
;;     ("e" org-clock-modify-effort-estimate)
;;     ("i" org-clock-in)
;;     ("j" org-clock-goto)
;;     ("o" org-clock-out)
;;     ("r" org-clock-report)
;;   )


;;;; easy-kill:
;; Once easy-kill is active (M-w), type ? for keybindings

;; The full list of save to kill-ring commands is the following:

;; - M-w w: save word at point
;; - M-w s: save sexp at point
;; - M-w l: save list at point (enclosing sexp)
;; - M-w d: save defun2 at point
;; - M-w D: save current defun’s name
;; - M-w f: save filename at point
;; - M-w b: save buffer-file-name (the name of the file a buffer is currently visiting) or default-directory (the current directory of a buffer, in case it’s not visiting a file).

;; There are also a bunch of keybindings that modify the current selection:

;; - @: append selection to previous kill and exit. For example, M-w d @ will append the current function to the last kill. Useful for creating compound entries in the kill-ring.
;; - C-w: kill selection and exit.
;; - +, - and 1-9: expand/shrink selection by 1 or n elements.
;; - 0: shrink the selection to the initial size i.e. before any expansion.
;; - SPC: cycle through things in easy-kill-alist (word at point, sexp at point, etc)
;; - C-SPC: turn selection into an active region, so you can apply some other operation on the region (e.g. indent-region)
;; - C-g: abort.

;;; Markdown mode

;; (use-package markdown-mode
;;   ;; :ensure t
;;   :defer 3
;;   :commands (markdown-mode gfm-mode)
;;   :mode (("README\\.md\\'" . gfm-mode)
;;          ("\\.md\\'" . markdown-mode)
;;          ("\\.markdown\\'" . markdown-mode))
;;   :init (setq markdown-command "multimarkdown"))

;;; Appearance
;;;; General
;; Don't show initial Emacs-logo and info
(setq inhibit-splash-screen t)


;; Tried to set the cursor color:
;; (add-to-list 'default-frame-alist '(cursor-color . "turquoise2"))
;; (add-hook 'after-init-hook
;; (lambda () (run-with-timer 5 nil #'set-cursor-color "turquoise2")))


;; This allows for a different font for each level of nested ()'s
(use-package rainbow-delimiters
  ;; :ensure t
  :defer 3
  :config
  (add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
  )

					; Change font height
					; Can change it later by M-: and pasting this in to evaluate the expression
					; last number is size (in font points ;;; 10)
(set-face-attribute 'default nil :height 150)
;;(set-face-attribute 'default nil :height 130)
(global-visual-line-mode t)
(global-linum-mode 1)                  ; Turn on line numbering
(show-paren-mode 1) ; when point is immediately to the right of a ) [or on a ( ] highlight the match

;; (add-hook 'window-setup-hook 'toggle-frame-maximized t)
(add-hook 'window-setup-hook '(lambda() (set-frame-parameter nil 'fullscreen 'maximized)) t)

					; These commands switch to full-screen mode, which means that
					; emacs actually overlaps my (always visible) task bar
					; First command says to maximize the window (which also full-screens it?)
					; (add-to-list 'default-frame-alist '(fullscreen . maximized))
					; After the window has finished opening, toggle the full screen (to OFF)
					; (run-with-idle-timer 0.1 nil 'toggle-frame-fullscreen)
					; (add-to-list 'default-frame-alist '(fullscreen . fullboth)) ; fullscreen

					; This didn't work:
					;(w32-send-sys-command 61488)

;; This will attempt to find a font to display Unicode characters in
;; (For example, not all fonts include, say â¨  (0x2a20),
;; so this plug-in will find an installed font to use in case the
;; one you'd normally use doesn't have this glyph

(use-package unicode-fonts
  ;; :ensure t
  :defer 4
  :config
  (unicode-fonts-setup)
  )

;;;; mode-line (smart-mode-line, powerline, telephone-line)

(defun setup-telephone-line()
  ;; faces for my segments
  (defface dark-green-active '((t (:foreground "SlateGray2" :background "dark olive green"))) "")
  (defface dark-green-inactive '((t (:foreground "SlateGray3" :background "dark olive green"))) "")

  (defface bright-green-active '((t (:foreground "gold2" :weight bold :background "dark green"))) "")
  (defface bright-green-inactive '((t (:foreground "gold2" :background "dark olive green"))) "")

  ;; (defface telephone-line-buffer-modified '((t (:foreground "red")))
  ;;   "Show the telephone-line-buffer-modified-display-string in this face when the buffer has been modified

  ;;   Modified means 'changed in memory since it was last saved to disk'
  ;;   Remember that you need to set a nil face-pair in your config for this to work, like so:
  ;;   (setq telephone-line-lhs
  ;;   	'( (nil . telephone-line-buffer-modified-segment) ) )"
  ;;   :group 'telephone-line )

  ;; (defcustom telephone-line-buffer-modified-display-string "!"
  ;;   "text to display when the buffer has been modified since the last time the buffer was saved to disk"
  ;;   :type '(string)
  ;;   :group 'telephone-line)

  ;; (defface telephone-line-buffer-unmodified '((t (:foreground "SlateGray2")))
  ;;   "Show the telephone-line-buffer-unmodified-display-string in this face when the buffer has not been modified

  ;;   Modified means 'changed in memory since it was last saved to disk'
  ;;   Remember that you need to set a nil face-pair in your config for this to work, like so:
  ;;   (setq telephone-line-lhs
  ;;   	'( (nil . telephone-line-buffer-modified-segment) ) )"
  ;;   )

  ;; (defcustom telephone-line-buffer-unmodified-display-string "-"
  ;;   "text to display when the buffer has not been changed since the last time the buffer was saved to disk"
  ;;   :type '(string)
  ;;   :group 'telephone-line)

  ;; (telephone-line-defsegment telephone-line-buffer-modified-segment ()
  ;;   (if (buffer-modified-p)
  ;; 	(telephone-line-raw (propertize telephone-line-buffer-modified-display-string 'face 'telephone-line-buffer-modified))
  ;;     (telephone-line-raw (propertize telephone-line-buffer-unmodified-display-string 'face 'telephone-line-buffer-unmodified))
  ;;     )
  ;;   )

  (telephone-line-defsegment telephone-line-buffer-list ()
    (buffer-stack-show-position-all-buffers-string)
    )

  ;; (telephone-line-defsegment telephone-line-buffer-name-segment ()
  ;;   mode-line-buffer-identification
  ;;   )

  ;; (telephone-line-defsegment telephone-line-file-name-segment ()
  ;;   buffer-file-name)

  (setq telephone-line-faces
	'(
	  (red . (my-red . my-red))
          (dark-green . (dark-green-active . dark-green-inactive))
	  (green . (bright-green-active . bright-green-inactive))
          (evil . telephone-line-evil-face)
          (accent . (telephone-line-accent-active . telephone-line-accent-inactive))
          (nil . (mode-line . mode-line-inactive))))

  ;; segments
  (setq telephone-line-lhs
	'((green . (telephone-line-major-mode-segment))
	  (nil . (telephone-line-buffer-modified-segment))
	  (dark-green . (telephone-line-file-name-absolute-path-segment))
	  (nil . (telephone-line-buffer-modified-segment))
	  (dark-green . ( ;;telephone-line-buffer-name-segment
			 telephone-line-minor-mode-segment
			 ))
	  ))

  ;;(setq telephone-line-center-lhs nil)

  (setq telephone-line-rhs
	'( (dark-green . (telephone-line-airline-position-segment))  ))

  ;; gradients
  ;; (setq telephone-line-primary-left-separator 'telephone-line-gradient
  ;; 	telephone-line-secondary-left-separator 'telephone-line-nil
  ;; 	telephone-line-primary-right-separator 'telephone-line-gradient
  ;; 	telephone-line-secondary-right-separator 'telephone-line-nil)
  ;; (setq telephone-line-height 24
  ;; 	telephone-line-evil-use-short-tag t)

  ;; Cubic separators
  (setq telephone-line-primary-left-separator 'telephone-line-cubed-left
  	telephone-line-secondary-left-separator 'telephone-line-cubed-hollow-left
  	telephone-line-primary-right-separator 'telephone-line-cubed-right
  	telephone-line-secondary-right-separator 'telephone-line-cubed-hollow-right)

  ;; ;; Halfsin Cubic separators
  ;; (setq telephone-line-primary-left-separator 'telephone-line-halfsin-left
  ;; 	telephone-line-secondary-left-separator 'telephone-line-halfsin-hollow-left
  ;; 	telephone-line-primary-right-separator 'telephone-line-halfsin-right
  ;; 	telephone-line-secondary-right-separator 'telephone-line-halfsin-hollow-right)

  (setq ;;telephone-line-height 26
   telephone-line-evil-use-short-tag t)

  (setq telephone-line-header-lhs
	'( ;;(nil . (telephone-line-buffer-modified-segment))
	  (nil . (telephone-line-buffer-list))
	  ;;	  (dark-green . (telephone-line-file-name-absolute-path-segment ))
	  ;;	  (nil . (telephone-line-buffer-modified-segment))
	  ))
  (setq telephone-line-header-rhs
	'( (nil . (telephone-line-buffer-modified-segment)) ) )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; Code to support custom strings & faces for the 'modified' segement
  ;; (rejected from my Pull Request, but it's nifty enough to save it just in case

  ;; (defface telephone-line-buffer-modified '((t (:foreground "red") ) )
  ;;   "Show the telephone-line-buffer-modified-display-string in this face when the buffer has been modified

  ;;   Modified means 'changed in memory since it was last saved to disk'
  ;;   Remember that you need to set a nil face-pair in your config for this to work, like so:
  ;;   (setq telephone-line-lhs
  ;;   	'( (nil . telephone-line-buffer-modified-segment) ) )"
  ;;   :group 'telephone-line )

  ;; (defcustom telephone-line-buffer-modified-display-string "!"
  ;;   "text to display when the buffer has been modified since the last time the buffer was saved to disk"
  ;;   :type '(string)
  ;;   :group 'telephone-line)

  ;; (defface telephone-line-buffer-unmodified '((t (:foreground "SlateGray2")))
  ;;   "Show the telephone-line-buffer-unmodified-display-string in this face when the buffer has not been modified

  ;;   Modified means 'changed in memory since it was last saved to disk'
  ;;   Remember that you need to set a nil face-pair in your config for this to work, like so:
  ;;   (setq telephone-line-lhs
  ;;   	'( (nil . telephone-line-buffer-modified-segment) ) )"
  ;;   )

  ;; (defcustom telephone-line-buffer-unmodified-display-string "-"
  ;;   "text to display when the buffer has not been changed since the last time the buffer was saved to disk"
  ;;   :type '(string)
  ;;   :group 'telephone-line)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  ;; (defcustom telephone-line-header-lhs
  ;;   '( (nil . (telephone-line-buffer-modified-segment))
  ;;      (dark-green . (telephone-line-file-name-segment ))
  ;;      (nil . (telephone-line-buffer-modified-segment))
  ;;      )
  ;;   "Left hand side of the header line segment alist."
  ;;   :type '(alist :key-type segment-color :value-type subsegment-list)
  ;;   :group 'telephone-line)

  ;; (defcustom telephone-line-header-rhs
  ;;   '( (nil . (telephone-line-buffer-modified-segment)) )
  ;;   "Right hand side of the header line segment alist."
  ;;   :type '(alist :key-type segment-color :value-type subsegment-list)
  ;;   :group 'telephone-line)

  ;; (defun telephone-line--generate-header-line-lhs ()
  ;;   (telephone-line-add-separators telephone-line-header-lhs
  ;; 				   telephone-line-primary-left-separator
  ;; 				   telephone-line-secondary-left-separator))

  ;; (defun telephone-line--generate-header-line-rhs ()
  ;;   (telephone-line-add-separators telephone-line-header-rhs
  ;; 				   telephone-line-primary-right-separator
  ;; 				   telephone-line-secondary-right-separator))

  ;; (defun telephone-line--generate-header-line ()
  ;;   `(,@(telephone-line--generate-header-line-lhs)
  ;;     (:eval (telephone-line-fill
  ;; 	      (telephone-line-width
  ;; 	       ',(telephone-line--generate-header-line-rhs)
  ;; 	       ,(- (length telephone-line-rhs) 1)
  ;; 	       ,telephone-line-primary-right-separator)
  ;; 	      (telephone-line-face-map (caar telephone-line-header-rhs))))
  ;;     ,@(telephone-line--generate-header-line-rhs)))

  ;; (setq-default header-line-format
  ;;               (if telephone-line-mode
  ;;                   `("%e" ,@(telephone-line--generate-header-line))
  ;;                 nil))

  ;; (setq
  ;;  telephone-line-lhs nil
  ;;  telephone-line-center-lhs nil
  ;;  telephone-line-center-rhs nil
  ;;  telephone-line-rhs nil)

  ;; (setq
  ;;  telephone-line-header-lhs nil
  ;;  telephone-line-header-center-lhs nil
  ;;  telephone-line-header-center-rhs nil
  ;;  telephone-line-header-rhs nil)

  (telephone-line-mode)
  ;;  (telephone-line-header-mode)
  )

(use-package telephone-line
  :config
  (setup-telephone-line)
  )

;; ;; minions - move minor modes to a menu
;; (use-package minions
;;   ;; :ensure t
;;   :config
;;   (minions-mode 1)
;;   )

;; (use-package powerline
;;   ;; :ensure t)
;; (use-package smart-mode-line
;;   ;; :ensure t
;;   :after powerline
;;   :config
;;   (setq sml/theme 'powerline)
;;   ;; Left over UI tweaks:
;;   ;;(setq sml/no-confirm-load-theme t)
;;   ;; (setq powerline-arrow-shape 'curve)
;;   ;;(setq powerline-default-separator-dir '(right . left))
;;   ;;(setq powerline-current-separator 'arrow)
;;   (sml/setup)
;;   )

;;;; Startup (dashboard)

;; (use-package dashboard
;;   :config
;;   (setq dashboard-banner-logo-title nil)
;;   ;; Set the banner
;;   ;;(setq dashboard-startup-banner 'logo)
;;   (setq dashboard-startup-banner "~/.emacs.d/DataFiles/emacs-bg-dribbble.png")

;;   (setq dashboard-items '((agenda . 10)
;;                           (bookmarks . 5)
;; 			  ;;  (projects . 5)
;;                           ;;  (registers . 5)
;; 			  (recents  . 200)
;; 			  ))

;;   (setq show-week-agenda-p t)
;;   (dashboard-setup-startup-hook)

;;   (if (< (length command-line-args) 2)
;;       (setq initial-buffer-choice (lambda () (get-buffer "*dashboard*")))
;;     )

;;   )

;;; Recent files

(use-package recentf
  ;; :ensure t
  :config
  ;; Add menu-item "File--Open recent"
  (recentf-mode)
  (setq recentf-max-menu-items 1000)
  (add-to-list 'recentf-exclude (concat STUDENT_WORK_ROOT "/BIT") )
  (add-to-list 'recentf-exclude "c:/Users/michp/AppData/Local/Temp")
  (add-to-list 'recentf-exclude ".emacs.d/elpa")
  )

;;; Helm

(message "Helm section")

;; (use-package helm-posframe) ;; crashes on load b/c of local variable problem
;; in case it ever works, look at https://www.reddit.com/r/emacs/comments/bvl94b/emacs_package_to_show_the_minibuffer_in_the/ 

(use-package helm
  ;; :ensure t
  :demand t
  :bind (
         ("C-x b" . helm-buffers-list)
         ("C-S-y" . helm-show-kill-ring)
         ("C-x m" . helm-M-x)
         ("C-x C-f" . helm-find-files)
         ("C-c r" . helm-mini)
	 ("C-c C-r" . helm-mini)
	 )
  :config
  (helm-mode 1)
  (setq helm-ff-file-name-history-use-recentf t)
  (message "helm-d defun")
  (defun helm-dashboard()
    (message "helm-dashboard: %s" command-line-args)
    (if (< (length command-line-args) 2)
        (let (
	      (helm-full-frame-orig helm-full-frame)
	      (helm-mini-default-sources-orig helm-mini-default-sources)
	      )

	  (setq helm-full-frame t)
	  (setq helm-mini-default-sources
		`(helm-source-bookmarks helm-source-recentf))
	  (set-frame-parameter nil 'fullscreen 'maximized)
	  (helm-mini)
	  (setq helm-full-frame helm-full-frame-orig)
	  (setq helm-mini-default-sources helm-mini-default-sources-orig)
	  )
      )
    )
  (add-hook 'window-setup-hook
	    (lambda ()
	      (message "window-setup-hook")
	      (helm-dashboard)
	      )	)
  )

;; (use-package swiper-helm
;;   ;; :ensure t
;;   :after helm

;;   ;; Next two lines will set C-f to be the 
;;   ;; helm 'find'/fuzzy-incremental search
;;   ;;:config
;;   ;; (global-set-key "\C-f" 'swiper-helm)
;;   )

;;; Grading related packages

;;;; Darkroom - remove distractions, increase font size
;; (use-package darkroom)
;; (add-hook 'csharp-mode-hook #'darkroom-tentative-mode)
;; This didn't play well with the tabbar

;;;; Display ^M as a newline
;; sometimes students have ^M at the end of lines
;; This leaves the buffer (and file) unchanged, but
;; displays the ^M as a newline (so things 'look right')
(defun remove-dos-eol ()
  "Do not show ^M in files containing mixed UNIX and DOS line endings."
  (interactive)
  (setq buffer-display-table (make-display-table))
  (aset buffer-display-table ?\^M [ ?\\ ?M ])
  (aset buffer-display-table ?\r [ ?\\ ?r])
  ;; (aset buffer-display-table ?\n [ ?\\ ?n ?\n])
  ;;(aset buffer-display-table ?\n [?\n])
  (replace-regexp "\r\n" "\n")
  (not-modified) ;; we're going to dump the buffer that we're grading anyways
  )

;; students hand me weirdly encoded files - this will help fix it
(add-hook 'csharp-mode-hook 'remove-dos-eol)
;; (add-hook 'text-mode-hook 'remove-dos-eol)

;;;; Ctrl+F__ for grading
;; This allows me to load up F2, F3, and F4 (and onwards) with patterns to look for
;; The patterns are persisted between sessions
;; There's a command ('lgp') which sets up F2,3,and 4 with patterns for each lesson of 142 and 143
(use-package mike-search
  :demand t ;; when I grade, I want to grade fast :)
  :bind (
         ("C-<f2>" . search-thing-at-point)
         ("C-<f3>" . search-thing-at-point)
         ("C-<f4>" . search-thing-at-point)
         ("C-<f5>" . search-thing-at-point)
         ("<f2>" . repeat-search-thing-at-point-forward)
         ("<f3>" . repeat-search-thing-at-point-forward)
         ("<f4>" . repeat-search-thing-at-point-forward)
         ("<f5>" . repeat-search-thing-at-point-forward)
         ("S-<f2>" . repeat-search-thing-at-point-backward)
         ("S-<f3>" . repeat-search-thing-at-point-backward)
         ("S-<f4>" . repeat-search-thing-at-point-backward)
         ("S-<f5>" . repeat-search-thing-at-point-backward)
         )
  :straight (:type git :host github :repo "MikeTheGreat/mike-search")
  )

;;; Pre-defined search patterns for BIT 142, 143

(defun center-screen ()
  "Cursor stuck in the middle of the screen; up and down arrows will move the entire screen"
  (interactive)
  (setq    maximum-scroll-margin 0.5
           scroll-margin 300)
  )

(defun uncenter-screen ()
  "Cursor stuck in the middle of the screen; up and down arrows will move the entire screen"
  (interactive)
  (setq    maximum-scroll-margin 0
           scroll-margin 10)
  )

(defun lgp ()
  "Prompt user for which lesson to load, then load it."
  (interactive)
  (block fnx
    (center-screen)
    (let ( (lesson (read-string "Enter lesson to load (Ex: 2-1 for BIT 14_2_, Lesson 0_1_): "  ) ) 
	   (output-str "Viewing Quiz has %s questions")
	   (num-questions "Unknown")
	   )
      (cond 
;;;;;;;;;;;;;;;;;;;;;;;;;;;; BIT 142 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;
       ( (or (equal lesson "2-A1") (equal lesson "2-a1"))
	 (set-search-item 'f2 "USING 'IF STATEMENTS' SHOULD" )
	 (set-search-item 'f3 "SOLUTION USING 'IF/ELSE STATEMENTS' SHOULD" )
	 (set-search-item 'f4 "SOLUTION USING 'SWITCH STATEMENTS' SHOULD" )
	 (setq num-questions "N/A")
	 )
       ( (equal lesson "2-1")
	 (set-search-item 'f2 "Hello.*Printer" )
	 (set-search-item 'f3 "Number.*Printer" )
					; (set-search-item 'f4 "Define_An_Instance_Method" )
	 (set-search-item 'f4 "Data_Type_Explanations" )
	 (setq num-questions "45")
	 )
       ( (equal lesson "2-1s")
	 (set-search-item 'f2 "Hello.*Printer" )
	 (set-search-item 'f3 "Number.*Printer" )
					; (set-search-item 'f4 "Define_An_Instance_Method" )
	 (set-search-item 'f4 "Data_Type_Explanations" )
	 (setq num-questions "34")
	 )
       ( (equal lesson "2-2")
	 (set-search-item 'f2 "class.*Modulus_Operator" )
					;    (set-search-item 'f3 "class.*IO_Operators" )
	 (set-search-item 'f3 "class.*Fahrenheit_To_Celsius" )
	 (set-search-item 'f4 "class.*Fahrenheit_To_Celsius" )
	 (setq num-questions "34")
	 )
       ( (equal (downcase lesson) "2-2s")
	 (set-search-item 'f2 "class.*Fahrenheit_To_Celsius" )
	 (set-search-item 'f3 "class.*RandomNumbersBasic" )
					;    (set-search-item 'f3 "class.*IO_Operators" )
					;    (set-search-item 'f4 "class.*Fahrenheit_To_Celsius" )
	 (setq num-questions "78")
	 )
       ( (equal lesson "2-3")
	 (set-search-item 'f2 "class.*RandomNumbersBasic" )
	 (set-search-item 'f3 "class.*Print_A_Range_Of_Numbers" )
	 (set-search-item 'f4 "class.*Nested_Loops_Hollow_Rectangles" )
	 (setq num-questions "45")
	 )
       ( (equal lesson "2-3s")
	 (set-search-item 'f2 "class.*Nested_Loops_Hollow_Rectangles" )
	 (set-search-item 'f3 "return[Mm]ax" )
	 (set-search-item 'f4 "public.*CalculateSum" )
	 (setq num-questions "106")
	 )
       ( (equal lesson "2-4")
	 (set-search-item 'f2 "max.*int.*int" )
	 (set-search-item 'f3 "returnMax" )
					;    (set-search-item 'f4 "class.*max" )
					;    (set-search-item 'f4 "Square_Of_Numbers_Parameters_Return" )
	 (set-search-item 'f4 "public.*CalculateSum" )
	 (setq num-questions "53")
	 )
       ( (equal (downcase lesson) "2-4s") ; summertime version
	 (set-search-item 'f2 "class.*Television" )
	 (set-search-item 'f3 "class.*TelevisionHandler" )
	 (set-search-item 'f4 "public.*PrintArrayOfPossiblyNullTVs" )
	 (setq num-questions "10")
	 )
       ( (equal lesson "2-5")
	 (set-search-item 'f2 "class.*Access_Control" )
	 (set-search-item 'f3 "class.*Blender" )
	 (set-search-item 'f4 "public.*PrintArrayOfPossiblyNullTVs" )
	 (setq num-questions "62")
	 )
       ( (equal (downcase lesson) "2-5s") ; summertime version
	 (set-search-item 'f2 "public.*PickMoreExpensiveTV" )
	 (set-search-item 'f3 "public.*GetAverage" )
	 (set-search-item 'f4 "class.*Car" )
	 (set-search-item 'f5 "public.*SpecificPrinter" )
	 (setq num-questions "69")
	 )
       ( (equal lesson "2-6")
	 (set-search-item 'f2 "public.*PickMoreExpensiveTV" )
	 (set-search-item 'f3 "public.*PrintBarChart" )
	 (set-search-item 'f4 "public.*GetAverage" )
	 (setq num-questions "33")
	 )
       ( (equal lesson "2-6s")
	 (setq num-questions "8 outlines (ONLY); Look in DebuggerExplanations.doc and Fireworks.cs")
	 )
       ( (equal lesson "2-7")
	 (set-search-item 'f2 "class.*Car" )
	 (set-search-item 'f3 "class.*Prius" )
	 (set-search-item 'f4 "public.*SpecificPrinter" )
	 (setq num-questions "36")
	 )
       ( (equal (downcase lesson) "2-7s") ; summertime version
	 (set-search-item 'f2 "public.*Binary.*Measured" )
	 (set-search-item 'f3 "public.*BubbleSort.*Measured" )
					;    (set-search-item 'f4 "" )
	 (setq num-questions "57")
	 )
       ( (equal lesson "2-8") ; File I/O
	 (set-search-item 'f2 "Output_Maxes" )
	 (set-search-item 'f3 "public.*Search" )
					;    (set-search-item 'f4 "" )
	 (setq num-questions "58")
	 )
       ( (equal  (downcase lesson) "2-8b") ; Burst A Bubble

	 (read-string "There are two files to read: DebuggerExplanation.doc and Fireworks.cs <press enter>")
	 (setq num-questions "LOOK THIS UP!!")
	 )
       ( (equal lesson "2-9")
	 (set-search-item 'f2 "public.*Binary.*Measured" )
	 (set-search-item 'f3 "public.*BubbleSort.*Measured" )
	 (set-search-item 'f4 "public.*BubbleSort.*Measured" )
	 (setq num-questions "57")
	 )

;;;;;;;;;;;;;;;;;;;;;;;;;;;; BIT 143 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;
       ( (or (equal lesson "3-A3") (equal lesson "3-a3"))
	 (set-search-item 'f2 "STUDENTS: YOUR ERROR" )
	 (set-search-item 'f3 "private class Book" )
	 (set-search-item 'f4 "ErrorCode Add" )
	 (setq num-questions "N/A")
	 )

       ( (equal lesson "3-1")
	 (set-search-item 'f2 "class.*Circle" )
	 (set-search-item 'f3 "class.*SmartArray" )
	 (set-search-item 'f4 "public.*PrintBarChart" )
	 (setq num-questions "13")
	 )
       ( (equal lesson "3-2")
	 (read-string "NOTE: 3-B and 5-B are in GitHub")
	 (setq num-questions "61 + 4 outlines")
	 (set-search-item 'f2 "class.*SmartArray" )
	 (set-search-item 'f3 "class.*Using_DotNets_Stack" )
	 )
       ( (equal lesson "3-3")
	 (set-search-item 'f2 "public.*Stack" )
	 (set-search-item 'f3 "public.*Queue" )
					;    (set-search-item 'f4 "" )
	 (setq num-questions "28")
	 )
       ( (equal lesson "3-4")
	 (set-search-item 'f2 "public.*front" )
					;    (set-search-item 'f3 "" )
					;    (set-search-item 'f4 "" )
	 (setq num-questions "50")
	 )
       ( (equal (downcase lesson) "3-4s") ; summertime version
	 (set-search-item 'f2 "public.*Front" )
	 (set-search-item 'f3 "void.*InsertAt" )
	 (set-search-item 'f4 "void.*RemoveAt" )
	 (setq num-questions "77")
	 )
       ( (equal lesson "3-5")
	 (set-search-item 'f2 "void.*InsertAt" )
	 (set-search-item 'f3 "void.*RemoveAt" )
					;    (set-search-item 'f4 "" )
	 (setq num-questions "31")
	 )
       ( (equal lesson "3-5s")
	 (set-search-item 'f2 "public.*MultR" )
	 (set-search-item 'f3 "public.*RecursivelyPrint" )
					;    (set-search-item 'f4 "" )
	 (setq num-questions "20")
	 )
       ( (equal lesson "3-6")
	 (set-search-item 'f2 "public.*MultR" )
	 (set-search-item 'f3 "public.*RecursivelyPrint" )
					;    (set-search-item 'f4 "" )
	 (setq num-questions "20")
	 )
       ( (equal (downcase lesson) "3-6s")
	 (set-search-item 'f2 "\\(public\\|private\\).*Add" )
	 (set-search-item 'f3 "\\(public\\|private\\).*Find" )
	 (set-search-item 'f4 "private.*Print" )
	 (setq num-questions "76")
	 )
       ( (equal lesson "3-7")
	 (set-search-item 'f2 "public.*Add" )
	 (set-search-item 'f3 "public.*Find" )
					;    (set-search-item 'f4 "" )
	 (setq num-questions "35")
	 )
       ( (equal (downcase lesson) "3-7s")
	 (set-search-item 'f2 "void.*RemoveNonrootNode" )
	 (set-search-item 'f3 "private.*FindAndRemoveNextSmallerValue" )
	 (set-search-item 'f4 "int.*Partition" )
	 (setq num-questions "73")
	 )
       ( (equal lesson "3-8")
	 (set-search-item 'f2 "private.*Print" )
	 (set-search-item 'f3 "private.*Find" )
	 (set-search-item 'f4 "private.*Add" )
	 (setq num-questions "25")
	 )
       ( (equal lesson "3-9")
	 (set-search-item 'f2 "void.*RemoveNonrootNode" )
	 (set-search-item 'f3 "public.*Partition" )
	 (set-search-item 'f4 "int.*partition" )
	 (setq num-questions "73")
	 )
       ( (equal lesson "3-10")
	 (set-search-item 'f2 "public.*Fibonnaci_With_List" )
	 (set-search-item 'f3 "public.*Push" )
	 (set-search-item 'f4 "public.*Pop" )
	 (setq num-questions "No viewing quiz - outlines are required instead")
	 )

;;;;;;;;;;;;;;;;;;;;;;;;; 'default' case ;;;;;;;;;;;;;;;;;;;;;;;;
       ( t
	 (message (format "Didn't find this lesson: %s" lesson))
	 (return-from fnx)
	 )
       ) ; end of cond

      (if (= 0 (string-to-number num-questions)) (setq output-str "Lesson info: %s"))
      (message (format output-str num-questions))
      )
    ) )

;; These were useful in debugging
;; (print search-thing-memory)
;; (print "Hi")



;;;; To detect plagiarism:
;; In cmd.exe:
;; cd to Assignment_1 dir
;; ExtractZips
;; Using cygwin, get rid of __MACOSX dirs:
;; find . -name "__MACOSX" -exec rm -r "{}" \;
;; find . -name "_vti_cnf" -exec rm -r "{}" \;
;; Back in cmd.exe, run
;; |	(First adjust the directory path)
;; java -jar E:\Work\Tech_Research\Plagiarism_jplag\jplag-2.11.8-SNAPSHOT-jar-with-dependencies.jar -l c#-1.2 -m 70% -r RESULTS -s -vl E:\Work\Student_Work\BIT_142_New\Assignment_2_Graded > JPLAG_OUTPUT.txt
;; Results will be in RESULTS\index.html, error messages from mis-parsed files in JPLAG_OUTPUT.txt
;; Using cygwin, get rid of the temporarily extracted files:
;; find . -name "NEW_SUBFOLDER_TO_EXTRACT_FILES_INTO" -exec rm -r "{}" \;
;;;; Converting from DOCX to HTML:
;; # For just 1 result:
;; find . -iwholename "*vti*" -prune -or -iwholename "*Lessons*docx" -print -quit

;; # redirect to file:
;; find . -iwholename "*vti*" -prune -or -iwholename "*Lessons*docx" -print > DOCX_CONVERSION_LIST.txt

;; # pandoc to convert:
;; pandoc --from=docx --to=html -o Get_VisualStudio_2017.docx.html --extract-media ./Get_VisualStudio.docx.media --standalone ./Get_VisualStudio_2017.docx

;; find . -iwholename "*vti*" -prune -or -iwholename "*Lessons*docx" -exec \pandoc --from=docx --to=html -o {}.html --standalone {} \; -quit

;; # from https://stackoverflow.com/questions/4509485/linux-remove-file-extensions-for-multiple-files
;; find -type f -name '*.txt' -print0 | while read -d $'\0' f; do mv "$f" "${f%.txt}"; done
;;;; To update web pages:

;; Find-and-replace with nothing (to remove):
;; <style(.|\n)@</style>   // to Remove 'style' section at the top
;; class=MsoNormal
;; <span([^>]|\n)*>
;; </span([^>]|\n)*>
;; <font([^>]|\n)*>
;; </font([^>]|\n)*>
;; style='([^']|\n)*'

;; //Find all spans that have gray color:
;; <span([^>]|\n)*gray([^>]|\n)*>


;; // fixing up tables: Remove these:
;; colspan=[0-9]*
;; <td([^>]|\n)*>    // replace with <td>

;; // use add this as the table:
;; <div class="table-responsive">
;; <table  width="100%" class="table table-bordered">

;; class="HeadingRow"
;; width="25%"

;; // Remove all other cell widths, then change first row to be 25-25-*
;; td.*width=[0-9];;; 
;; // Remove all junk inside td's:
;; <td[^>]*>


;; // Replace:
;; <div class=WordSection1>
;; // with:
;; <div class="container-fluid">

;; // Paste in at top:
;; <html lang="en">
;; <head>
;; <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
;; <meta name="viewport" content="width=device-width, initial-scale=1">
;; <!-- Latest compiled and minified CSS -->
;; <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

;; <link rel="stylesheet" href="http://bootswatch.com/readable/bootstrap.min.css"  crossorigin="anonymous">

;; <!-- jQuery library -->
;; <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

;; <!-- Latest compiled and minified JavaScript -->
;; <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

;; <link href="../../../../../Courses.css" rel="stylesheet" type="text/css">
;;; Server mode
;; This will turn THIS RUNNING PROCESS into an emacs server
;; (If this process exits, then it stops being a server, obviously :) )
;; Then we can use emacsclient.exe to send files here in the future

;; Sometimes there's an error about the server actively refusing connections
;; In that case go to ~/.emacs.d/server and delete whatever files are there

(use-package server
  ;; :ensure t
  :defer 2
  :config
  ;;(message "Making sure that an emacs server is running")
  (if (server-running-p)
      (message "\tServer is already running!"))
  (unless (server-running-p)
    (message "\tServer not running - this instance will become the server")

					;(cond
					; ((eq system-type 'windows-nt)
					;  (setq server-auth-dir "~\\.emacs.d\\server\\"))
					; ((eq system-type 'gnu/linux)
					;  (setq server-auth-dir "~/.emacs.d/server/")))
					;(setq server-name "emacs-server-file")

    (server-start)
    )
  )


;;; Web-mode
;; Docs: http://web-mode.org/ 
;; Look into:
;;
;; For 'Live Preview":
;; https://github.com/skeeto/skewer-mode
;;
;; For multiple modes in one buffer:
;; https://www.emacswiki.org/emacs/HtmlModeDeluxe
;; or maybe:
;; https://github.com/phillord/lentic

;; (use-package web-mode
;;   :mode "\\.html\\'"

;;   :config
;;   (setq web-mode-enable-auto-pairing t)
;;   (setq web-mode-enable-css-colorization nil)
;;   (setq web-mode-enable-auto-closing t)

;;   (defun open-in-browser()
;;     "open buffer in browser, unless it is not a file. Then fail silently (ouch)."
;;     (interactive)
;;     (if (buffer-file-name)
;; 	(let ((filename (buffer-file-name)))
;;           (shell-command (concat "start chrome.exe \"" filename "\"")))))
;;   ;;  (define-key web-mode-map (kbd "C-n") 'web-mode-tag-match)
;;   (define-key web-mode-map (kbd "C-c C-v") 'open-in-browser)
;;   )

;;(require 'web-mode)
;;(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
;;(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
;;(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
;;(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
;;(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
;;(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
;;(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))

;;(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
;;(message "Done loading configuration.org!")

;;;; Web-mode shortcuts
;; From http://web-mode.org/:
;;
;; General
;; M-; comment / uncomment line(s)
;; C-c C-f toggle folding on a tag/block
;; C-c C-i indent entire buffer
;; C-c C-m mark and expand
;; C-c C-s insert snippet
;; C-c C-w toggle display of invalid whitespaces
;; DOM
;; C-c C-d a replace apostrophes
;; C-c C-d d show tag mismatch
;; C-c C-d e replace HTML entities
;; C-c C-d n normalize
;; C-c C-d q replace dumb quotes
;; C-c C-d t traverse dom tree
;; C-c C-d x xpath
;; Block
;; C-c C-b b block beginning
;; C-c C-b c block close
;; C-c C-b e block end
;; C-c C-b k block kill
;; C-c C-b n next block
;; C-c C-b p previous block
;; C-c C-b s block select
;; HTML element
;; C-c C-e / element close
;; C-c C-e a select element content
;; C-c C-e b element beginning
;; C-c C-e c element clone
;; C-c C-e d child element (down)
;; C-c C-e e element end
;; C-c C-e f toggle folding on children
;; C-c C-e i element insert
;; C-c C-e k element kill
;; C-c C-e m mute blanks between children
;; C-c C-e n next element
;; C-c C-e p previous element
;; C-c C-e r rename element
;; C-c C-e s select element
;; C-c C-e t transpose element
;; C-c C-e u parent element (up)
;; C-c C-e v element vanish
;; C-c C-e w wrap element

;;; Code folding


;; https://github.com/gregsexton/origami.el
;; https://github.com/gregsexton/origami.el#what-can-it-do
(use-package origami
  :bind ( ( "<f7>"  . origami-forward-toggle-node)
          ( [M-f7]  . origami-close-all-nodes)
          ( [S-M-f7]  . origami-open-all-nodes)
  	  )
  :config
  (global-origami-mode)
  )


;; fold-dwim:
;; http://community.dur.ac.uk/p.j.heslin/Software/Emacs/Download/fold-dwim.el.txt

;; As near as I can tell, fold-dwim isn't really a code-folding library itself
;; Instead, it's trying to provide a consistent set of key sequences for any
;; underlying folding libraries.

;; Fold-dwim uses hideshow to do anything (at least for C#) to do the actual
;; folding, which is why we need to enable the hs-minor-mode for C# files

;; (use-package fold-dwim
;;   ;; :ensure t ;; auto-install if needed
;;   :defer 2
;;   :bind ( ( "<f7>"  . fold-dwim-toggle)
;;           ( [M-f7]  . fold-dwim-hide-all)
;;           ( [S-M-f7]  . fold-dwim-show-all)
;; 	  )
;;   :config
;;   (add-hook 'csharp-mode-hook (lambda() (hs-minor-mode) ) )
;;   )

;;; projectile

;; not currently using this, so remove it

;; (use-package projectile
;;   ;; :ensure t
;;   :pin melpa-stable
;;   :defer 5
;;   :after helm
;;   :config
;;   (define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
;;   (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
;;   (projectile-mode +1)
;;   (setq-default
;;    projectile-completion-system 'helm
;;    projectile-switch-project-action #'projectile-find-file-dwim
;;    ;; Display project name, or else remove this section
;;    projectile-mode-line '(:eval (if (string= "-" (projectile-project-name) ) " " (format " [%s] " (projectile-project-name) ) ) )
;;    )
;;   )

;;; treemacs

;; not currently using this, so remove it

;; (use-package treemacs
;;   ;; :ensure t
;;   :defer 5
;;   :init
;;   (with-eval-after-load 'winum
;;     (define-key winum-keymap (kbd "M-0") #'treemacs-select-window))
;;   :config
;;   (progn
;;     (setq treemacs-collapse-dirs              (if (executable-find "python") 3 0)
;;           treemacs-deferred-git-apply-delay   0.5
;;           treemacs-display-in-side-window     t
;;           treemacs-file-event-delay           5000
;;           treemacs-file-follow-delay          0.2
;;           treemacs-follow-after-init          t
;;           treemacs-follow-recenter-distance   0.1
;;           treemacs-goto-tag-strategy          'refetch-index
;;           treemacs-indentation                2
;;           treemacs-indentation-string         " "
;;           treemacs-is-never-other-window      nil
;;           treemacs-no-png-images              nil
;;           treemacs-project-follow-cleanup     nil
;;           treemacs-persist-file               (expand-file-name ".cache/treemacs-persist" user-emacs-directory)
;;           treemacs-recenter-after-file-follow nil
;;           treemacs-recenter-after-tag-follow  nil
;;           treemacs-show-hidden-files          t
;;           treemacs-silent-filewatch           nil
;;           treemacs-silent-refresh             nil
;;           treemacs-sorting                    'alphabetic-desc
;;           treemacs-space-between-root-nodes   t
;;           treemacs-tag-follow-cleanup         t
;;           treemacs-tag-follow-delay           1.5
;;           treemacs-width                      35)

;;     ;; The default width and height of the icons is 22 pixels. If you are
;;     ;; using a Hi-DPI display, uncomment this to double the icon size.
;;     ;;(treemacs-resize-icons 44)

;;     (treemacs-follow-mode t)
;;     (treemacs-filewatch-mode t)
;;     (treemacs-fringe-indicator-mode t)
;;     (pcase (cons (not (null (executable-find "git")))
;;                  (not (null (executable-find "python3"))))
;;       (`(t . t)
;;        (treemacs-git-mode 'extended))
;;       (`(t . _)
;;        (treemacs-git-mode 'simple))))
;;   :bind
;;   (:map global-map
;;         ("M-0"       . treemacs-select-window)
;;         ("C-x t 1"   . treemacs-delete-other-windows)
;;         ("C-x t t"   . treemacs)
;;         ("C-x t B"   . treemacs-bookmark)
;;         ("C-x t C-t" . treemacs-find-file)
;;         ("C-x t M-t" . treemacs-find-tag)))

;; (use-package treemacs-projectile
;;   :after treemacs projectile
;;   ;; :ensure t
;;   :defer 3
;;   )

;;; Git (magit, git-gutter)
;; I'd really like to use the git-gutter-fringe-plus
;; package (or even git-gutter), but git-gutter-fringe+ in
;; MELPA-stable's version (0.1) requires wrong fringe-helper
;; (require `git-gutter-fringe+)

;;(use-package magit
;;   ;; :ensure t
;;   :bind (
;;          ("C-x g s" . magit-status)
;; 	 )
;;   )

;; ;; from https://github.com/dgutov/diff-hl
;; (use-package diff-hl
;;   :config
;;   (add-hook 'magit-post-refresh-hook 'diff-hl-magit-post-refresh)
;;   (setq diff-hl-fringe-bmp-function 'diff-hl-fringe-bmp-from-type)
;;   (setq diff-hl-margin-side 'left)
;;   ;;(diff-hl-mode t)
;;   (global-diff-hl-mode)
;;   (diff-hl-flydiff-mode)
;;   )
;; git-gutter kept adding blank spaces into the margin
;; (1 space per move of the cursor)
;; git-gutter+ worked better, but only showed changes when the file
;; was saved.
;; diff-hl shows the changes immediately (via flydiff mode)


;;; Python
;; Is this actually doing anything?  And how does this relate to flycheck?
;; (use-package elpy
;;   ;; :ensure t
;;   :mode ("\\.py[iw]?\\'" . python-mode)
;;   :config
;;   (elpy-enable)
;;   )

;; (use-package py-autopep8
;;   ;; :ensure t
;;   :defer 2
;;   :config
;;       (add-hook 'python-mode-hook 'py-autopep8-enable-on-save)
;; )

;; (use-package realgud
;;   ;; :ensure t
;;   :mode ("\\.py[iw]?\\'" . python-mode)
;; )


;;; CSharp-mode

(use-package csharp-mode
  )

;;; Completion

;; COMPlete ANYwhere
;; http://company-mode.github.io/
(use-package company
  ;; :ensure t
  ;; :pin melpa-stable
  :defer 3
  :config
  (add-hook 'after-init-hook 'global-company-mode)
  :after company
  )

;; https://github.com/proofit404/company-tern
;; (use-package company-tern
;;     ;; :ensure t
;;     :defer 3
;;     :config
;;         (add-to-list 'company-backends 'company-tern)
;; )


;;; Docker


;; (use-package dockerfile-mode
;;   ;; :ensure t
;;   :defer 5
;;   :mode (("Dockerfile" . dockerfile-mode))
;;   )

;; https://github.com/proofit404/company-tern
;; (use-package company-tern
;;     ;; :ensure t
;;     :defer 3
;;     :config
;;         (add-to-list 'company-backends 'company-tern)
;; )

;;; Unused (archived)
;;;; MobileOrg

;; (setq org-mobile-checksum-binary "E:\\Pers\\Dropbox\\Personal\\home\\sha1sum.exe")
;;(setq org-mobile-directory "E:\\Pers\\Dropbox\\MobileOrg")
;; I set this via customize-group instead

;;;; Misc
;; from http://emacsblog.org/2007/01/17/indent-whole-buffer/
(defun indent-buffer ()
  "indent whole buffer"
  (interactive)
  (delete-trailing-whitespace)
  (indent-region (point-min) (point-max) nil)
  (untabify (point-min) (point-max)))

;; from https://dougie.io/emacs/indent-selection/
(global-set-key (kbd "C->") 'indent-rigidly-right-to-tab-stop)
(global-set-key (kbd "C-<") 'indent-rigidly-left-to-tab-stop)

;;;; org-gcal
;; I tried playing around with org-gcal, but couldn't get it to work :(
;; Client ID
;; 228358222878-q4vgq6u6nc84d4l3u6l43fps2m72cnji.apps.googleusercontent.com
;;{"installed":{"client_id":"228358222878-q4vgq6u6nc84d4l3u6l43fps2m72cnji.apps.googleusercontent.com","project_id":"dummyprojectfororgmodecal","auth_uri":"https://accounts.google.com/o/oauth2/auth","token_uri":"https://accounts.google.com/o/oauth2/token","auth_provider_x509_cert_url":"https://www.googleapis.com/oauth2/v1/certs","client_secret":"DAIhnLPSkEVXEPAanp1dEPyP","redirect_uris":["urn:ietf:wg:oauth:2.0:oob","http://localhost"]}}
;; 7kkc0ekk871c6313jvq5m3gsdg@group.calendar.google.com
;; The first time I called org-gcal-fetch it asked for permission, then told me to "Please copy this code, switch to your application and paste it there:"
;; 4/bkOCXxjLE4uJPIxXDrX6xCX0fKsMwG0NTUNiR-TjKI0
;;(require 'org-gcal)
;;(setq org-gcal-client-id "228358222878-q4vgq6u6nc84d4l3u6l43fps2m72cnji.apps.googleusercontent.com"
;;      org-gcal-client-secret "DAIhnLPSkEVXEPAanp1dEPyP"
;;      org-gcal-file-alist '(("7kkc0ekk871c6313jvq5m3gsdg@group.calendar.google.com" .  "~/schedule.org") ))
;;;; ido-mode
;; I played around with this for a bit before deciding on helm, instead

;; I'm not actually sure if this is an improvement
;; Ctrl-X Ctrl-R to open the recentf menu, filtered through ido
;; One can then type (ANY) part of the name to filter down to that
;; C-N to move down an item, C-p to move up (to the previous) one
;;(require 'ido)
;;(ido-mode t)
;;(defun ido-recentf-open ()
;;  "Use `ido-completing-read' to \\[find-file] a recent file"
;;  (interactive)
;;  (if (find-file (ido-completing-read "Find recent file: " recentf-list))
;;     (message "Opening file...")
;;    (message "Aborting")))


;; (setq backup-directory-alist
;;           `((".*" . ,temporary-file-directory)))
;;     (setq auto-save-file-name-transforms
;;           `((".*" ,temporary-file-directory t)))
;; (message "Deleting old backup files...")
;; (let ((week (* 60 60 24 7))
;;       (current (float-time (current-time))))
;;   (dolist (file (directory-files temporary-file-directory t))
;;     (when (and (backup-file-name-p file)
;;                (> (- current (float-time (fifth (file-attributes file))))
;;                   week))
;;       (message "%s" file)
;;       (delete-file file))))
;;; OpenSCAD
;; (use-package scad-mode
;;   )

;; Swift (lang)
;;(use-package swift-mode)

;;; Chess
;;(use-package emacs-chess)
;;(straight-use-package
;;'(emacs-chess :type git :host github :repo "jwiegley/emacs-chess"))

;;(use-package xahk-mode)
;;; Trim extra whitespace

(use-package ethan-wspace
  ;; :ensure t
  :config
  (global-ethan-wspace-mode 1)
  )
