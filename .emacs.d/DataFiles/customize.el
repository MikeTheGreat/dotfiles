(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(blink-cursor-alist nil)
 '(bookmark-default-file "~/.emacs.d/DataFiles/bookmarks")
 '(browse-url-browser-function (quote browse-url-default-windows-browser))
 '(buffer-stack-filter (quote buffer-stack-filter-exclusive-regexp))
 '(buffer-stack-show-position (quote buffer-stack-show-position-all-buffers))
 '(buffer-stack-untracked
   (quote
    ("KILL" "*Compile-Log*" "*Compile-Log-Show*" "*Group*" "*Completions*" "helm")))
 '(cua-enable-cua-keys nil t)
 '(cursor-type (quote (bar . 3)))
 '(custom-enabled-themes (quote (obsidian-MikePanitz)))
 '(custom-safe-themes
   (quote
    ("24ad263d8a4293ec981733ce41079dd8696b41cc2d7c9a457cdbef7a2a6d1603" "92d2c43722cfff0e3a5683c2ab8570e5ed080d7dcc5fc99494782d2c5bfe3860" "95bd514ae3ff177bc6f84a530d738f06fc9450b4fb1e990669192936b3db2021" "d7dc90a8cf3507a673248d870e4dabb644b685efdf55bccf8c600d521dafaaba" "f40a88e6dd9f7e0847a550ed2b5c1e27e940e77ff71b15b2874b81828ab14869" "80aa9de27f4710e3c4abeb590394ecd0e1a9bdebd714f98711639a1a5c2aef8a" "59fc29518e698ca6da046525a0f3cd79d3f3e26ffd1500818ab9edc5b841d657" "a3a50dac689cab998aff2fe42a8c9490d3a9c372c29712f690f1dd0e8afb68e1" "1e84c947cc9b323208eb61bc77a70ffa84764bb727297fb49ca6e21a2e1a932d" "24fc794a16809a86a63ec2e6f8801e99141aca73fc238ea30d35f87c88847329" "47df6a14322c553c8c21566517211e0385dcfd03d316f62d4c6e910d7257b74e" "7a89347312f63dc6cce3b1c55d336973886f64e30acc70e3d5e9b2ae68955036" "22d3babdaed7aa6091fc4582610a8ac906dae5be0430ae61010ee62b26bfa4a4" "f91f070638c657cd89a9d6df6cb51112368b03f2b0a776a1a85e8dbd2c93ca7b")))
 '(custom-theme-directory "~/.emacs.d/themes")
 '(diff-hl-margin-mode t)
 '(easy-kill-try-things (quote (url email word line)))
 '(global-origami-mode t)
 '(helm-boring-buffer-regexp-list
   (quote
    ("\\` " "\\*helm" "\\*helm-mode" "\\*Echo Area" "\\*Minibuf" "\\*[^MC].*\\*")))
 '(helm-mini-default-sources
   (quote
    (helm-source-buffers-list helm-source-bookmarks helm-source-recentf helm-source-buffer-not-found)))
 '(org-agenda-files
   (quote
    ("C:/MikesStuff/Pers/DropBox/Personal/OrgMode/Teaching.org" "C:/MikesStuff/Pers/DropBox/Personal/OrgMode/Personal.org" "C:/MikesStuff/Pers/DropBox/Personal/OrgMode/Union.org" "C:/MikesStuff/Pers/DropBox/Personal/OrgMode/Wait For.org")))
 '(org-archive-file-header-format "
Archived entries from all files

")
 '(org-archive-location
   "C:/MikesStuff/Pers/Dropbox/Personal/OrgMode/archives/archive.org::datetree/* From %s")
 '(org-archive-save-context-info
   (quote
    (time file category todo priority itags olpath ltags)))
 '(org-blank-before-new-entry (quote ((heading) (plain-list-item))))
 '(org-bullets-bullet-list (quote ("►◉" "○" "✸" "✿")))
 '(org-default-notes-file "E:\\Pers\\Dropbox\\Personal\\OrgMode/InTray.org")
 '(org-emphasis-alist
   (quote
    (("*" bold)
     ("/" italic)
     ("_" underline)
     ("=" org-verbatim verbatim)
     ("~" org-code verbatim)
     ("+"
      (:background "steelblue" :foreground "midnightblue")))))
 '(org-html-doctype "html5")
 '(org-html-html5-fancy t)
 '(org-html-table-default-attributes
   (quote
    (:border "2" :cellspacing "0" :cellpadding "6" :rules "all" :frame "border")))
 '(org-log-done t)
 '(org-mobile-directory "E:\\\\Pers\\\\Dropbox\\\\MobileOrg")
 '(org-mobile-inbox-for-pull
   "E:\\\\Pers\\\\Dropbox\\\\Personal\\\\OrgMode\\\\from-mobile.org")
 '(org-refile-targets (quote ((org-agenda-files :maxlevel . 6))))
 '(org-refile-use-outline-path nil)
 '(org-startup-indented t)
 '(org-todo-keywords (quote ((sequence "NEXT" "TODO" "DONE"))))
 '(origami-parser-alist
   (quote
    ((java-mode . origami-java-parser)
     (csharp-mode . origami-java-parser)
     (c-mode . origami-c-parser)
     (c++-mode . origami-c-style-parser)
     (perl-mode . origami-c-style-parser)
     (cperl-mode . origami-c-style-parser)
     (js-mode . origami-c-style-parser)
     (js2-mode . origami-c-style-parser)
     (js3-mode . origami-c-style-parser)
     (go-mode . origami-c-style-parser)
     (php-mode . origami-c-style-parser)
     (python-mode . origami-python-parser)
     (emacs-lisp-mode . origami-elisp-parser)
     (lisp-interaction-mode . origami-elisp-parser)
     (clojure-mode . origami-clj-parser)
     (triple-braces .
		    #[257 "\303\304\305\306\307\300\301\302$\310\"\311\312%\207"
			  ["{{{" "}}}" "\\(?:\\(?:{{{\\|}}}\\)\\)" make-byte-code 257 "\304\302\"\305\303\300\301$\207" vconcat vector
			   [origami-get-positions origami-build-pair-tree]
			   7 "

(fn CONTENT)"]
			  10 "

(fn CREATE)"]))))
 '(package-selected-packages
   (quote
    (minions telephone-line breadcrumb hydra-examples easy-kill dockerfile-mode git-gutter+ dash-at-point doom-themes outlined-elisp-mode outshine outorg elpy unicode-fonts helm-org-rifle company-tern company realgud git-gutter-fringe+ py-autopep8 benchmark-init esup org-bullets org-mode helm-config rainbow-delimiters markdown-mode treemacs-projectile treemacs projectile hideshowvis fold-dwim use-package magit dash web-mode csharp-mode zerodark-theme swiper-helm smart-mode-line-powerline-theme request-deferred ox-twbs org obsidian-theme helm-orgcard color-theme alert)))
 '(projectile-cache-file "~/.emacs.d/DataFiles/projectile.cache")
 '(projectile-globally-ignored-directories
   (quote
    (".idea" ".ensime_cache" ".eunit" ".git" ".hg" ".fslckout" "_FOSSIL_" ".bzr" "_darcs" ".tox" ".svn" ".stack-work" ".vscode" "__pycache__")))
 '(projectile-known-projects-file "~/.emacs.d/DataFiles/projectile-bookmarks.eld")
 '(recentf-auto-cleanup (quote never))
 '(recentf-exclude
   (quote
    (".emacs.d/elpa" "/\\(\\(\\(COMMIT\\|NOTES\\|PULLREQ\\|TAG\\)_EDIT\\|MERGE_\\|\\)MSG\\|\\(BRANCH\\|EDIT\\)_DESCRIPTION\\)\\'" "c:/MikesStuff/Pers/Dropbox/Personal/home/.emacs.d/DataFiles/HomeworkSearchVars.el" "c:/Users/michp/AppData/Local/Temp" "C:/MikesStuff/Work/Student_Work/BIT" ".emacs.d/.cache")))
 '(recentf-max-menu-items 30)
 '(recentf-max-saved-items 0)
 '(show-paren-mode t)
 '(show-trailing-whitespace t)
 '(sml/mode-width
   (if
       (eq
	(powerline-current-separator)
	(quote arrow))
       (quote right)
     (quote full)))
 '(sml/pos-id-separator
   (quote
    (""
     (:propertize " " face powerline-active1)
     (:eval
      (propertize " "
		  (quote display)
		  (funcall
		   (intern
		    (format "powerline-%s-%s"
			    (powerline-current-separator)
			    (car powerline-default-separator-dir)))
		   (quote powerline-active1)
		   (quote powerline-active2))))
     (:propertize " " face powerline-active2))))
 '(sml/pos-minor-modes-separator
   (quote
    (""
     (:propertize " " face powerline-active1)
     (:eval
      (propertize " "
		  (quote display)
		  (funcall
		   (intern
		    (format "powerline-%s-%s"
			    (powerline-current-separator)
			    (cdr powerline-default-separator-dir)))
		   (quote powerline-active1)
		   nil)))
     (:propertize " " face sml/global))))
 '(sml/pre-id-separator
   (quote
    (""
     (:propertize " " face sml/global)
     (:eval
      (propertize " "
		  (quote display)
		  (funcall
		   (intern
		    (format "powerline-%s-%s"
			    (powerline-current-separator)
			    (car powerline-default-separator-dir)))
		   nil
		   (quote powerline-active1))))
     (:propertize " " face powerline-active1))))
 '(sml/pre-minor-modes-separator
   (quote
    (""
     (:propertize " " face powerline-active2)
     (:eval
      (propertize " "
		  (quote display)
		  (funcall
		   (intern
		    (format "powerline-%s-%s"
			    (powerline-current-separator)
			    (cdr powerline-default-separator-dir)))
		   (quote powerline-active2)
		   (quote powerline-active1))))
     (:propertize " " face powerline-active1))))
 '(sml/pre-modes-separator (propertize " " (quote face) (quote sml/modes)))
 '(sml/show-trailing-N t)
 '(straight-use-package-by-default t)
 '(tabbar-background-color "#293134")
 '(tabbar-separator (quote (0.2)))
 '(tabbar-use-images t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cursor ((t (:background "turquoise2"))))
 '(diff-hl-change ((t (:background "light goldenrod" :foreground "light goldenrod"))))
 '(diff-hl-delete ((t (:inherit diff-removed :background "tomato" :foreground "tomato"))))
 '(diff-hl-insert ((t (:inherit diff-added :background "medium sea green" :foreground "medium sea green"))))
 '(ediff-current-diff-C ((t (:background "gray21"))))
 '(ediff-even-diff-A ((t (:background "light grey" :foreground "black" :weight bold))))
 '(ediff-even-diff-Ancestor ((t (:background "Grey" :foreground "black" :weight bold))))
 '(ediff-even-diff-B ((t (:background "Grey" :foreground "navy" :weight bold))))
 '(ediff-even-diff-C ((t (:background "light grey" :foreground "forest green" :weight bold))))
 '(ediff-odd-diff-A ((t (:background "Grey" :foreground "black" :weight bold))))
 '(ediff-odd-diff-B ((t (:background "light grey" :foreground "navy" :weight bold))))
 '(ediff-odd-diff-C ((t (:background "Grey" :foreground "black" :weight bold))))
 '(helm-buffer-file ((t (:inherit font-lock-builtin-face))))
 '(helm-ff-file ((t (:inherit font-lock-builtin-face :foreground "white smoke"))))
 '(helm-selection ((t (:background "ForestGreen" :distant-foreground "black" :foreground "yellow" :height 1.1))))
 '(lazy-highlight ((t (:background "dim gray" :foreground "gainsboro" :weight bold))))
 '(markdown-header-face-1 ((t (:inherit markdown-header-face :underline t :height 1.3))))
 '(markdown-header-face-2 ((t (:inherit markdown-header-face :underline t :height 1.2))))
 '(markdown-header-face-3 ((t (:inherit markdown-header-face :underline t :height 1.1))))
 '(markdown-header-face-4 ((t (:inherit markdown-header-face :underline t :height 1.1))))
 '(markdown-header-face-5 ((t (:inherit markdown-header-face :underline t))))
 '(markdown-header-face-6 ((t (:inherit markdown-header-face :underline t))))
 '(org-archived ((t (:inherit shadow :foreground "dim gray"))))
 '(org-level-1 ((t (:inherit outline-1 :foreground "gold" :weight bold))))
 '(org-level-2 ((t (:inherit outline-2 :foreground "light sky blue" :weight bold))))
 '(org-level-3 ((t (:inherit outline-3 :foreground "sea green" :weight bold))))
 '(org-level-4 ((t (:inherit outline-4 :foreground "medium purple" :weight bold))))
 '(org-level-5 ((t (:inherit outline-5))))
 '(org-level-6 ((t (:inherit outline-6))))
 '(org-level-7 ((t (:inherit outline-7))))
 '(org-level-8 ((t (:inherit outline-8))))
 '(outline-1 ((t (:foreground "gold" :weight bold :height 1.24))))
 '(outline-2 ((t (:foreground "light sky blue" :weight bold :height 1.15))))
 '(outline-3 ((t (:foreground "sea green" :weight bold :height 1.1))))
 '(outline-4 ((t (:foreground "medium purple" :weight bold))))
 '(outline-7 ((t (:inherit font-lock-builtin-face :foreground "RoyalBlue1"))))
 '(rainbow-delimiters-depth-1-face ((t (:foreground "snow"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "cornflower blue" :weight extra-bold))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "yellow green" :weight extra-bold))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "light goldenrod" :weight extra-bold))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "#aebed8" :weight extra-bold))))
 '(rainbow-delimiters-unmatched-face ((t (:foreground "orange red" :weight extra-bold))))
 '(sml/folder ((t (:inherit sml/global :background "grey22" :foreground "cornsilk" :weight normal))))
 '(sml/global ((t (:foreground "gray71" :inverse-video nil))))
 '(sml/modes ((t (:inherit sml/global :background "grey40" :foreground "gray73"))))
 '(sml/name-filling ((t (:inherit sml/prefix :background "gray18" :weight normal))))
 '(tabbar-button-highlight ((t (:inherit tabbar-default :background "limegreen"))))
 '(tabbar-default ((t (:inherit variable-pitch :background "grey50" :foreground "grey75" :height 0.8))))
 '(tabbar-highlight ((t (:background "limegreen" :foreground "black" :box (:line-width 1 :color "gray19") :underline nil))))
 '(tabbar-selected ((t (:inherit tabbar-default :background "gray19" :foreground "limegreen" :box (:line-width 1 :color "gray19")))))
 '(trailing-whitespace ((t (:background "slate blue")))))
