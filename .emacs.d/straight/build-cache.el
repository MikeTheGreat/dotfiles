
:tanat

"26.1"

#s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8125 data ("org-elpa" ("2020-09-05 22:59:16" nil (:local-repo nil :package "org-elpa" :type git)) "melpa" ("2020-09-05 22:59:16" nil (:type git :host github :repo "melpa/melpa" :no-build t :package "melpa" :local-repo "melpa")) "gnu-elpa-mirror" ("2020-09-05 22:59:20" nil (:type git :host github :repo "emacs-straight/gnu-elpa-mirror" :no-build t :package "gnu-elpa-mirror" :local-repo "gnu-elpa-mirror")) "emacsmirror-mirror" ("2020-09-05 22:59:23" nil (:type git :host github :repo "emacs-straight/emacsmirror-mirror" :no-build t :package "emacsmirror-mirror" :local-repo "emacsmirror-mirror")) "straight" ("2020-09-05 22:59:30" ("emacs") (:type git :host github :repo "raxod502/straight.el" :files ("straight*.el") :branch "develop" :package "straight" :local-repo "straight.el")) "use-package" ("2020-09-05 22:59:39" ("emacs" "bind-key") (:type git :flavor melpa :files (:defaults (:exclude "bind-key.el" "bind-chord.el" "use-package-chords.el" "use-package-ensure-system-package.el") "use-package-pkg.el") :host github :repo "jwiegley/use-package" :package "use-package" :local-repo "use-package")) "bind-key" ("2020-09-05 22:59:37" nil (:flavor melpa :files ("bind-key.el" "bind-key-pkg.el") :package "bind-key" :local-repo "use-package" :type git :repo "jwiegley/use-package" :host github)) "org" ("2020-09-05 23:02:23" nil (:type git :repo "https://code.orgmode.org/bzg/org-mode.git" :local-repo "org" :package "org")) "org-bullets" ("2020-09-05 23:02:27" nil (:type git :flavor melpa :host github :repo "integral-dw/org-bullets" :package "org-bullets" :local-repo "org-bullets")) "outorg" ("2020-09-05 23:02:31" ("emacs") (:type git :flavor melpa :host github :repo "alphapapa/outorg" :package "outorg" :local-repo "outorg")) "outshine" ("2020-09-05 23:02:38" ("outorg" "cl-lib") (:type git :flavor melpa :host github :repo "alphapapa/outshine" :package "outshine" :local-repo "outshine")) "navi-mode" ("2020-09-05 23:02:42" ("outshine" "outorg") (:type git :flavor melpa :host github :repo "alphapapa/navi" :package "navi-mode" :local-repo "navi")) "undo-tree" ("2020-09-05 23:02:49" nil (:type git :host github :repo "emacs-straight/undo-tree" :files ("*" (:exclude ".git")) :package "undo-tree" :local-repo "undo-tree")) "tabbar" ("2020-09-05 23:02:53" nil (:type git :flavor melpa :files ("tabbar.el" "*.png" "tabbar-pkg.el") :host github :repo "dholm/tabbar" :package "tabbar" :local-repo "tabbar")) "easy-kill" ("2020-09-05 23:02:57" ("emacs" "cl-lib") (:type git :host github :repo "MikeTheGreat/easy-kill" :package "easy-kill" :local-repo "easy-kill")) "hydra" ("2020-09-05 23:03:03" ("cl-lib" "lv") (:type git :flavor melpa :files (:defaults (:exclude "lv.el") "hydra-pkg.el") :host github :repo "abo-abo/hydra" :package "hydra" :local-repo "hydra")) "lv" ("2020-09-05 23:03:02" nil (:flavor melpa :files ("lv.el" "lv-pkg.el") :package "lv" :local-repo "hydra" :type git :repo "abo-abo/hydra" :host github)) "ace-window" ("2020-09-05 23:03:13" ("avy") (:type git :flavor melpa :host github :repo "abo-abo/ace-window" :package "ace-window" :local-repo "ace-window")) "avy" ("2020-09-05 23:03:13" ("emacs" "cl-lib") (:type git :flavor melpa :host github :repo "abo-abo/avy" :package "avy" :local-repo "avy")) "markdown-mode" ("2020-09-05 23:03:22" ("emacs") (:type git :flavor melpa :host github :repo "jrblevin/markdown-mode" :package "markdown-mode" :local-repo "markdown-mode")) "rainbow-delimiters" ("2020-09-05 23:03:27" nil (:type git :flavor melpa :host github :repo "Fanael/rainbow-delimiters" :package "rainbow-delimiters" :local-repo "rainbow-delimiters")) "unicode-fonts" ("2020-09-05 23:04:00" ("font-utils" "ucs-utils" "list-utils" "persistent-soft" "pcache") (:type git :flavor melpa :host github :repo "rolandwalker/unicode-fonts" :package "unicode-fonts" :local-repo "unicode-fonts")) "font-utils" ("2020-09-05 23:03:53" ("persistent-soft" "pcache") (:type git :flavor melpa :host github :repo "rolandwalker/font-utils" :package "font-utils" :local-repo "font-utils")) "persistent-soft" ("2020-09-05 23:03:53" ("pcache" "list-utils") (:type git :flavor melpa :host github :repo "rolandwalker/persistent-soft" :package "persistent-soft" :local-repo "persistent-soft")) "pcache" ("2020-09-05 23:03:49" ("eieio") (:type git :flavor melpa :host github :repo "sigma/pcache" :package "pcache" :local-repo "pcache")) "list-utils" ("2020-09-05 23:03:52" nil (:type git :flavor melpa :host github :repo "rolandwalker/list-utils" :package "list-utils" :local-repo "list-utils")) "ucs-utils" ("2020-09-05 23:03:59" ("persistent-soft" "pcache" "list-utils") (:type git :flavor melpa :host github :repo "rolandwalker/ucs-utils" :package "ucs-utils" :local-repo "ucs-utils")) "telephone-line" ("2020-09-05 23:04:10" ("emacs" "cl-lib" "cl-generic" "seq") (:type git :flavor melpa :host github :repo "dbordak/telephone-line" :package "telephone-line" :local-repo "telephone-line")) "helm" ("2020-09-05 23:05:32" ("emacs" "async" "popup" "helm-core") (:type git :flavor melpa :files ("*.el" "emacs-helm.sh" (:exclude "helm.el" "helm-lib.el" "helm-source.el" "helm-multi-match.el" "helm-core-pkg.el") "helm-pkg.el") :host github :repo "emacs-helm/helm" :package "helm" :local-repo "helm")) "async" ("2020-09-05 23:05:08" ("emacs") (:type git :flavor melpa :host github :repo "jwiegley/emacs-async" :package "async" :local-repo "emacs-async")) "popup" ("2020-09-05 23:05:14" ("cl-lib") (:type git :flavor melpa :files ("popup.el" "popup-pkg.el") :host github :repo "auto-complete/popup-el" :package "popup" :local-repo "popup-el")) "helm-core" ("2020-09-05 23:05:17" ("emacs" "async") (:flavor melpa :files ("helm-core-pkg.el" "helm.el" "helm-lib.el" "helm-source.el" "helm-multi-match.el" "helm-core-pkg.el") :package "helm-core" :local-repo "helm" :type git :repo "emacs-helm/helm" :host github))))

#s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8125 data ("straight" ((straight straight-x straight-autoloads) (autoload (quote straight-get-recipe) "straight" "Interactively select a recipe from one of the recipe repositories.
All recipe repositories in `straight-recipe-repositories' will
first be cloned. After the recipe is selected, it will be copied
to the kill ring. With a prefix argument, first prompt for a
recipe repository to search. Only that repository will be
cloned.

From Lisp code, SOURCES should be a subset of the symbols in
`straight-recipe-repositories'. Only those recipe repositories
are cloned and searched. If it is nil or omitted, then the value
of `straight-recipe-repositories' is used. If SOURCES is the
symbol `interactive', then the user is prompted to select a
recipe repository, and a list containing that recipe repository
is used for the value of SOURCES. ACTION may be `copy' (copy
recipe to the kill ring), `insert' (insert at point), or nil (no
action, just return it).

(fn &optional SOURCES ACTION)" t nil) (autoload (quote straight-visit-package-website) "straight" "Interactively select a recipe, and visit the package's website.

(fn)" t nil) (autoload (quote straight-use-package) "straight" "Register, clone, build, and activate a package and its dependencies.
This is the main entry point to the functionality of straight.el.

MELPA-STYLE-RECIPE is either a symbol naming a package, or a list
whose car is a symbol naming a package and whose cdr is a
property list containing e.g. `:type', `:local-repo', `:files',
and VC backend specific keywords.

First, the package recipe is registered with straight.el. If
NO-CLONE is a function, then it is called with two arguments: the
package name as a string, and a boolean value indicating whether
the local repository for the package is available. In that case,
the return value of the function is used as the value of NO-CLONE
instead. In any case, if NO-CLONE is non-nil, then processing
stops here.

Otherwise, the repository is cloned, if it is missing. If
NO-BUILD is a function, then it is called with one argument: the
package name as a string. In that case, the return value of the
function is used as the value of NO-BUILD instead. In any case,
if NO-BUILD is non-nil, then processing halts here. Otherwise,
the package is built and activated. Note that if the package
recipe has a non-nil `:no-build' entry, then NO-BUILD is ignored
and processing always stops before building and activation
occurs.

CAUSE is a string explaining the reason why
`straight-use-package' has been called. It is for internal use
only, and is used to construct progress messages. INTERACTIVE is
non-nil if the function has been called interactively. It is for
internal use only, and is used to determine whether to show a
hint about how to install the package permanently.

Return non-nil if package was actually installed, and nil
otherwise (this can only happen if NO-CLONE is non-nil).

(fn MELPA-STYLE-RECIPE &optional NO-CLONE NO-BUILD CAUSE INTERACTIVE)" t nil) (autoload (quote straight-register-package) "straight" "Register a package without cloning, building, or activating it.
This function is equivalent to calling `straight-use-package'
with a non-nil argument for NO-CLONE. It is provided for
convenience. MELPA-STYLE-RECIPE is as for
`straight-use-package'.

(fn MELPA-STYLE-RECIPE)" nil nil) (autoload (quote straight-use-package-no-build) "straight" "Register and clone a package without building it.
This function is equivalent to calling `straight-use-package'
with nil for NO-CLONE but a non-nil argument for NO-BUILD. It is
provided for convenience. MELPA-STYLE-RECIPE is as for
`straight-use-package'.

(fn MELPA-STYLE-RECIPE)" nil nil) (autoload (quote straight-use-package-lazy) "straight" "Register, build, and activate a package if it is already cloned.
This function is equivalent to calling `straight-use-package'
with symbol `lazy' for NO-CLONE. It is provided for convenience.
MELPA-STYLE-RECIPE is as for `straight-use-package'.

(fn MELPA-STYLE-RECIPE)" nil nil) (autoload (quote straight-use-recipes) "straight" "Register a recipe repository using MELPA-STYLE-RECIPE.
This registers the recipe and builds it if it is already cloned.
Note that you probably want the recipe for a recipe repository to
include a non-nil `:no-build' property, to unconditionally
inhibit the build phase.

This function also adds the recipe repository to
`straight-recipe-repositories', at the end of the list.

(fn MELPA-STYLE-RECIPE)" nil nil) (autoload (quote straight-override-recipe) "straight" "Register MELPA-STYLE-RECIPE as a recipe override.
This puts it in `straight-recipe-overrides', depending on the
value of `straight-current-profile'.

(fn MELPA-STYLE-RECIPE)" nil nil) (autoload (quote straight-check-package) "straight" "Rebuild a PACKAGE if it has been modified.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. See also `straight-rebuild-package' and
`straight-check-all'.

(fn PACKAGE)" t nil) (autoload (quote straight-check-all) "straight" "Rebuild any packages that have been modified.
See also `straight-rebuild-all' and `straight-check-package'.
This function should not be called during init.

(fn)" t nil) (autoload (quote straight-rebuild-package) "straight" "Rebuild a PACKAGE.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. With prefix argument RECURSIVE, rebuild
all dependencies as well. See also `straight-check-package' and
`straight-rebuild-all'.

(fn PACKAGE &optional RECURSIVE)" t nil) (autoload (quote straight-rebuild-all) "straight" "Rebuild all packages.
See also `straight-check-all' and `straight-rebuild-package'.

(fn)" t nil) (autoload (quote straight-prune-build-cache) "straight" "Prune the build cache.
This means that only packages that were built in the last init
run and subsequent interactive session will remain; other
packages will have their build mtime information and any cached
autoloads discarded.

(fn)" nil nil) (autoload (quote straight-prune-build-directory) "straight" "Prune the build directory.
This means that only packages that were built in the last init
run and subsequent interactive session will remain; other
packages will have their build directories deleted.

(fn)" nil nil) (autoload (quote straight-prune-build) "straight" "Prune the build cache and build directory.
This means that only packages that were built in the last init
run and subsequent interactive session will remain; other
packages will have their build mtime information discarded and
their build directories deleted.

(fn)" t nil) (autoload (quote straight-normalize-package) "straight" "Normalize a PACKAGE's local repository to its recipe's configuration.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'.

(fn PACKAGE)" t nil) (autoload (quote straight-normalize-all) "straight" "Normalize all packages. See `straight-normalize-package'.
Return a list of recipes for packages that were not successfully
normalized. If multiple packages come from the same local
repository, only one is normalized.

PREDICATE, if provided, filters the packages that are normalized.
It is called with the package name as a string, and should return
non-nil if the package should actually be normalized.

(fn &optional PREDICATE)" t nil) (autoload (quote straight-fetch-package) "straight" "Try to fetch a PACKAGE from the primary remote.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. With prefix argument FROM-UPSTREAM,
fetch not just from primary remote but also from upstream (for
forked packages).

(fn PACKAGE &optional FROM-UPSTREAM)" t nil) (autoload (quote straight-fetch-package-and-deps) "straight" "Try to fetch a PACKAGE and its (transitive) dependencies.
PACKAGE, its dependencies, their dependencies, etc. are fetched
from their primary remotes.

PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. With prefix argument FROM-UPSTREAM,
fetch not just from primary remote but also from upstream (for
forked packages).

(fn PACKAGE &optional FROM-UPSTREAM)" t nil) (autoload (quote straight-fetch-all) "straight" "Try to fetch all packages from their primary remotes.
With prefix argument FROM-UPSTREAM, fetch not just from primary
remotes but also from upstreams (for forked packages).

Return a list of recipes for packages that were not successfully
fetched. If multiple packages come from the same local
repository, only one is fetched.

PREDICATE, if provided, filters the packages that are fetched. It
is called with the package name as a string, and should return
non-nil if the package should actually be fetched.

(fn &optional FROM-UPSTREAM PREDICATE)" t nil) (autoload (quote straight-merge-package) "straight" "Try to merge a PACKAGE from the primary remote.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. With prefix argument FROM-UPSTREAM,
merge not just from primary remote but also from upstream (for
forked packages).

(fn PACKAGE &optional FROM-UPSTREAM)" t nil) (autoload (quote straight-merge-package-and-deps) "straight" "Try to merge a PACKAGE and its (transitive) dependencies.
PACKAGE, its dependencies, their dependencies, etc. are merged
from their primary remotes.

PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. With prefix argument FROM-UPSTREAM,
merge not just from primary remote but also from upstream (for
forked packages).

(fn PACKAGE &optional FROM-UPSTREAM)" t nil) (autoload (quote straight-merge-all) "straight" "Try to merge all packages from their primary remotes.
With prefix argument FROM-UPSTREAM, merge not just from primary
remotes but also from upstreams (for forked packages).

Return a list of recipes for packages that were not successfully
merged. If multiple packages come from the same local
repository, only one is merged.

PREDICATE, if provided, filters the packages that are merged. It
is called with the package name as a string, and should return
non-nil if the package should actually be merged.

(fn &optional FROM-UPSTREAM PREDICATE)" t nil) (autoload (quote straight-pull-package) "straight" "Try to pull a PACKAGE from the primary remote.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. With prefix argument FROM-UPSTREAM, pull
not just from primary remote but also from upstream (for forked
packages).

(fn PACKAGE &optional FROM-UPSTREAM)" t nil) (autoload (quote straight-pull-package-and-deps) "straight" "Try to pull a PACKAGE and its (transitive) dependencies.
PACKAGE, its dependencies, their dependencies, etc. are pulled
from their primary remotes.

PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. With prefix argument FROM-UPSTREAM,
pull not just from primary remote but also from upstream (for
forked packages).

(fn PACKAGE &optional FROM-UPSTREAM)" t nil) (autoload (quote straight-pull-all) "straight" "Try to pull all packages from their primary remotes.
With prefix argument FROM-UPSTREAM, pull not just from primary
remotes but also from upstreams (for forked packages).

Return a list of recipes for packages that were not successfully
pulled. If multiple packages come from the same local repository,
only one is pulled.

PREDICATE, if provided, filters the packages that are pulled. It
is called with the package name as a string, and should return
non-nil if the package should actually be pulled.

(fn &optional FROM-UPSTREAM PREDICATE)" t nil) (autoload (quote straight-push-package) "straight" "Push a PACKAGE to its primary remote, if necessary.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'.

(fn PACKAGE)" t nil) (autoload (quote straight-push-all) "straight" "Try to push all packages to their primary remotes.

Return a list of recipes for packages that were not successfully
pushed. If multiple packages come from the same local repository,
only one is pushed.

PREDICATE, if provided, filters the packages that are normalized.
It is called with the package name as a string, and should return
non-nil if the package should actually be normalized.

(fn &optional PREDICATE)" t nil) (autoload (quote straight-freeze-versions) "straight" "Write version lockfiles for currently activated packages.
This implies first pushing all packages that have unpushed local
changes. If the package management system has been used since the
last time the init-file was reloaded, offer to fix the situation
by reloading the init-file again. If FORCE is
non-nil (interactively, if a prefix argument is provided), skip
all checks and write the lockfile anyway.

Currently, writing version lockfiles requires cloning all lazily
installed packages. Hopefully, this inconvenient requirement will
be removed in the future.

Multiple lockfiles may be written (one for each profile),
according to the value of `straight-profiles'.

(fn &optional FORCE)" t nil) (autoload (quote straight-thaw-versions) "straight" "Read version lockfiles and restore package versions to those listed.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "straight" (quote ("straight-")))) (defvar straight-x-pinned-packages nil "List of pinned packages.") (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "straight-x" (quote ("straight-x-")))) (provide (quote straight-autoloads))) "bind-key" ((bind-key bind-key-autoloads) (autoload (quote bind-key) "bind-key" "Bind KEY-NAME to COMMAND in KEYMAP (`global-map' if not passed).

KEY-NAME may be a vector, in which case it is passed straight to
`define-key'. Or it may be a string to be interpreted as
spelled-out keystrokes, e.g., \"C-c C-z\". See documentation of
`edmacro-mode' for details.

COMMAND must be an interactive function or lambda form.

KEYMAP, if present, should be a keymap variable or symbol.
For example:

  (bind-key \"M-h\" #'some-interactive-function my-mode-map)

  (bind-key \"M-h\" #'some-interactive-function 'my-mode-map)

If PREDICATE is non-nil, it is a form evaluated to determine when
a key should be bound. It must return non-nil in such cases.
Emacs can evaluate this form at any time that it does redisplay
or operates on menu data structures, so you should write it so it
can safely be called at any time.

(fn KEY-NAME COMMAND &optional KEYMAP PREDICATE)" nil t) (autoload (quote unbind-key) "bind-key" "Unbind the given KEY-NAME, within the KEYMAP (if specified).
See `bind-key' for more details.

(fn KEY-NAME &optional KEYMAP)" nil t) (autoload (quote bind-key*) "bind-key" "Similar to `bind-key', but overrides any mode-specific bindings.

(fn KEY-NAME COMMAND &optional PREDICATE)" nil t) (autoload (quote bind-keys) "bind-key" "Bind multiple keys at once.

Accepts keyword arguments:
:map MAP               - a keymap into which the keybindings should be
                         added
:prefix KEY            - prefix key for these bindings
:prefix-map MAP        - name of the prefix map that should be created
                         for these bindings
:prefix-docstring STR  - docstring for the prefix-map variable
:menu-name NAME        - optional menu string for prefix map
:filter FORM           - optional form to determine when bindings apply

The rest of the arguments are conses of keybinding string and a
function symbol (unquoted).

(fn &rest ARGS)" nil t) (autoload (quote bind-keys*) "bind-key" "

(fn &rest ARGS)" nil t) (autoload (quote describe-personal-keybindings) "bind-key" "Display all the personal keybindings defined by `bind-key'.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "bind-key" (quote ("compare-keybindings" "get-binding-description" "bind-key" "personal-keybindings" "override-global-m")))) (provide (quote bind-key-autoloads))) "use-package" ((use-package use-package-lint use-package-jump use-package-ensure use-package-diminish use-package-delight use-package-core use-package-bind-key use-package-autoloads) (autoload (quote use-package-autoload-keymap) "use-package-bind-key" "Loads PACKAGE and then binds the key sequence used to invoke
this function to KEYMAP-SYMBOL. It then simulates pressing the
same key sequence a again, so that the next key pressed is routed
to the newly loaded keymap.

This function supports use-package's :bind-keymap keyword. It
works by binding the given key sequence to an invocation of this
function for a particular keymap. The keymap is expected to be
defined by the package. In this way, loading the package is
deferred until the prefix key sequence is pressed.

(fn KEYMAP-SYMBOL PACKAGE OVERRIDE)" nil nil) (autoload (quote use-package-normalize-binder) "use-package-bind-key" "

(fn NAME KEYWORD ARGS)" nil nil) (defalias (quote use-package-normalize/:bind) (quote use-package-normalize-binder)) (defalias (quote use-package-normalize/:bind*) (quote use-package-normalize-binder)) (defalias (quote use-package-autoloads/:bind) (quote use-package-autoloads-mode)) (defalias (quote use-package-autoloads/:bind*) (quote use-package-autoloads-mode)) (autoload (quote use-package-handler/:bind) "use-package-bind-key" "

(fn NAME KEYWORD ARGS REST STATE &optional BIND-MACRO)" nil nil) (defalias (quote use-package-normalize/:bind-keymap) (quote use-package-normalize-binder)) (defalias (quote use-package-normalize/:bind-keymap*) (quote use-package-normalize-binder)) (autoload (quote use-package-handler/:bind-keymap) "use-package-bind-key" "

(fn NAME KEYWORD ARGS REST STATE &optional OVERRIDE)" nil nil) (autoload (quote use-package-handler/:bind-keymap*) "use-package-bind-key" "

(fn NAME KEYWORD ARG REST STATE)" nil nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "use-package-bind-key" (quote ("use-package-handler/:bind*")))) (autoload (quote use-package) "use-package-core" "Declare an Emacs package by specifying a group of configuration options.

For full documentation, please see the README file that came with
this file.  Usage:

  (use-package package-name
     [:keyword [option]]...)

:init            Code to run before PACKAGE-NAME has been loaded.
:config          Code to run after PACKAGE-NAME has been loaded.  Note that
                 if loading is deferred for any reason, this code does not
                 execute until the lazy load has occurred.
:preface         Code to be run before everything except `:disabled'; this
                 can be used to define functions for use in `:if', or that
                 should be seen by the byte-compiler.

:mode            Form to be added to `auto-mode-alist'.
:magic           Form to be added to `magic-mode-alist'.
:magic-fallback  Form to be added to `magic-fallback-mode-alist'.
:interpreter     Form to be added to `interpreter-mode-alist'.

:commands        Define autoloads for commands that will be defined by the
                 package.  This is useful if the package is being lazily
                 loaded, and you wish to conditionally call functions in your
                 `:init' block that are defined in the package.
:hook            Specify hook(s) to attach this package to.

:bind            Bind keys, and define autoloads for the bound commands.
:bind*           Bind keys, and define autoloads for the bound commands,
                 *overriding all minor mode bindings*.
:bind-keymap     Bind a key prefix to an auto-loaded keymap defined in the
                 package.  This is like `:bind', but for keymaps.
:bind-keymap*    Like `:bind-keymap', but overrides all minor mode bindings

:defer           Defer loading of a package -- this is implied when using
                 `:commands', `:bind', `:bind*', `:mode', `:magic', `:hook',
                 `:magic-fallback', or `:interpreter'.  This can be an integer,
                 to force loading after N seconds of idle time, if the package
                 has not already been loaded.
:after           Delay the use-package declaration until after the named modules
                 have loaded. Once load, it will be as though the use-package
                 declaration (without `:after') had been seen at that moment.
:demand          Prevent the automatic deferred loading introduced by constructs
                 such as `:bind' (see `:defer' for the complete list).

:if EXPR         Initialize and load only if EXPR evaluates to a non-nil value.
:disabled        The package is ignored completely if this keyword is present.
:defines         Declare certain variables to silence the byte-compiler.
:functions       Declare certain functions to silence the byte-compiler.
:load-path       Add to the `load-path' before attempting to load the package.
:diminish        Support for diminish.el (if installed).
:delight         Support for delight.el (if installed).
:custom          Call `custom-set' or `set-default' with each variable
                 definition without modifying the Emacs `custom-file'.
                 (compare with `custom-set-variables').
:custom-face     Call `customize-set-faces' with each face definition.
:ensure          Loads the package using package.el if necessary.
:pin             Pin the package to an archive.

(fn NAME &rest ARGS)" nil t) (function-put (quote use-package) (quote lisp-indent-function) (quote 1)) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "use-package-core" (quote ("use-package-")))) (autoload (quote use-package-normalize/:delight) "use-package-delight" "Normalize arguments to delight.

(fn NAME KEYWORD ARGS)" nil nil) (autoload (quote use-package-handler/:delight) "use-package-delight" "

(fn NAME KEYWORD ARGS REST STATE)" nil nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "use-package-delight" (quote ("use-package-normalize-delight")))) (autoload (quote use-package-normalize/:diminish) "use-package-diminish" "

(fn NAME KEYWORD ARGS)" nil nil) (autoload (quote use-package-handler/:diminish) "use-package-diminish" "

(fn NAME KEYWORD ARG REST STATE)" nil nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "use-package-diminish" (quote ("use-package-normalize-diminish")))) (autoload (quote use-package-normalize/:ensure) "use-package-ensure" "

(fn NAME KEYWORD ARGS)" nil nil) (autoload (quote use-package-handler/:ensure) "use-package-ensure" "

(fn NAME KEYWORD ENSURE REST STATE)" nil nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "use-package-ensure" (quote ("use-package-")))) (autoload (quote use-package-jump-to-package-form) "use-package-jump" "Attempt to find and jump to the `use-package' form that loaded
PACKAGE. This will only find the form if that form actually
required PACKAGE. If PACKAGE was previously required then this
function will jump to the file that originally required PACKAGE
instead.

(fn PACKAGE)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "use-package-jump" (quote ("use-package-find-require")))) (autoload (quote use-package-lint) "use-package-lint" "Check for errors in use-package declarations.
For example, if the module's `:if' condition is met, but even
with the specified `:load-path' the module cannot be found.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "use-package-lint" (quote ("use-package-lint-declaration")))) (provide (quote use-package-autoloads))) "org" ((ox ox-texinfo ox-publish ox-org ox-odt ox-md ox-man ox-latex ox-icalendar ox-html ox-beamer ox-ascii org org-timer org-tempo org-table org-src org-refile org-protocol org-plot org-pcomplete org-num org-mouse org-mobile org-macs org-macro org-loaddefs org-list org-lint org-keys org-install org-inlinetask org-indent org-id org-habit org-goto org-footnote org-feed org-faces org-entities org-element org-duration org-datetree org-ctags org-crypt org-compat org-colview org-clock org-capture org-autoloads org-attach org-attach-git org-archive org-agenda ol ol-w3m ol-rmail ol-mhe ol-irc ol-info ol-gnus ol-eww ol-eshell ol-docview ol-bibtex ol-bbdb ob ob-vala ob-tangle ob-table ob-stan ob-sqlite ob-sql ob-shen ob-shell ob-sed ob-screen ob-scheme ob-sass ob-ruby ob-ref ob-R ob-python ob-processing ob-plantuml ob-picolisp ob-perl ob-org ob-octave ob-ocaml ob-mscgen ob-maxima ob-matlab ob-makefile ob-lua ob-lob ob-lisp ob-lilypond ob-ledger ob-latex ob-js ob-java ob-J ob-io ob-hledger ob-haskell ob-groovy ob-gnuplot ob-fortran ob-forth ob-exp ob-eval ob-eshell ob-emacs-lisp ob-ebnf ob-dot ob-ditaa ob-css ob-core ob-coq ob-comint ob-clojure ob-calc ob-C ob-awk ob-asymptote ob-abc) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-C" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-J" (quote ("obj-" "org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-R" (quote ("ob-R-" "org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-abc" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-asymptote" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-awk" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-calc" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-clojure" (quote ("ob-clojure-" "org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-comint" (quote ("org-babel-comint-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-coq" (quote ("org-babel-" "coq-program-name")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-core" (quote ("org-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-css" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-ditaa" (quote ("org-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-dot" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-ebnf" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-emacs-lisp" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-eshell" (quote ("ob-eshell-session-live-p" "org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-eval" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-exp" (quote ("org-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-forth" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-fortran" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-gnuplot" (quote ("org-babel-" "*org-babel-gnuplot-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-groovy" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-haskell" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-hledger" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-io" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-java" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-js" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-latex" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-ledger" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-lilypond" (quote ("org-babel-" "lilypond-mode")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-lisp" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-lob" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-lua" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-makefile" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-maxima" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-mscgen" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-ocaml" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-octave" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-org" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-perl" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-picolisp" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-plantuml" (quote ("org-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-processing" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-python" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-ref" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-ruby" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-sass" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-scheme" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-screen" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-sed" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-shell" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-shen" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-sql" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-sqlite" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-stan" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-table" (quote ("org-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-tangle" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-vala" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ol" (quote ("org-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ol-bbdb" (quote ("org-bbdb-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ol-bibtex" (quote ("org-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ol-docview" (quote ("org-docview-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ol-eshell" (quote ("org-eshell-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ol-eww" (quote ("org-eww-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ol-gnus" (quote ("org-gnus-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ol-info" (quote ("org-info-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ol-irc" (quote ("org-irc-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ol-mhe" (quote ("org-mhe-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ol-rmail" (quote ("org-rmail-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ol-w3m" (quote ("org-w3m-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org" (quote ("org-" "turn-on-org-cdlatex")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-agenda" (quote ("org-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-archive" (quote ("org-a")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-attach" (quote ("org-attach-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-attach-git" (quote ("org-attach-git-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-capture" (quote ("org-capture-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-clock" (quote ("org-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-colview" (quote ("org-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-compat" (quote ("org-")))) (autoload (quote org-encrypt-entry) "org-crypt" "Encrypt the content of the current headline.

(fn)" t nil) (autoload (quote org-decrypt-entry) "org-crypt" "Decrypt the content of the current headline.

(fn)" t nil) (autoload (quote org-encrypt-entries) "org-crypt" "Encrypt all top-level entries in the current buffer.

(fn)" t nil) (autoload (quote org-decrypt-entries) "org-crypt" "Decrypt all entries in the current buffer.

(fn)" t nil) (autoload (quote org-crypt-use-before-save-magic) "org-crypt" "Add a hook to automatically encrypt entries before a file is saved to disk.

(fn)" nil nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-crypt" (quote ("org-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-ctags" (quote ("org-ctags-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-datetree" (quote ("org-datetree-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-duration" (quote ("org-duration-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-element" (quote ("org-element-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-entities" (quote ("org-entit")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-faces" (quote ("org-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-feed" (quote ("org-feed-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-footnote" (quote ("org-footnote-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-goto" (quote ("org-goto-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-habit" (quote ("org-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-id" (quote ("org-id-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-indent" (quote ("org-indent-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-inlinetask" (quote ("org-inlinetask-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-keys" (quote ("org-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-lint" (quote ("org-lint-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-list" (quote ("org-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-macro" (quote ("org-macro-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-macs" (quote ("org-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-mobile" (quote ("org-mobile-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-mouse" (quote ("org-mouse-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-num" (quote ("org-num-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-pcomplete" (quote ("pcomplete/org-mode/" "org-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-plot" (quote ("org-plot")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-protocol" (quote ("org-protocol-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-refile" (quote ("org-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-src" (quote ("org-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-table" (quote ("org")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-tempo" (quote ("org-tempo-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-timer" (quote ("org-timer-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ox" (quote ("org-export-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ox-ascii" (quote ("org-ascii-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ox-beamer" (quote ("org-beamer-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ox-html" (quote ("org-html-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ox-icalendar" (quote ("org-icalendar-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ox-latex" (quote ("org-latex-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ox-man" (quote ("org-man-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ox-md" (quote ("org-md-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ox-odt" (quote ("org-odt-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ox-org" (quote ("org-org-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ox-publish" (quote ("org-publish-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ox-texinfo" (quote ("org-texinfo-")))) (provide (quote org-autoloads))) "org-bullets" ((org-bullets org-bullets-autoloads) (autoload (quote org-bullets-mode) "org-bullets" "Use UTF8 bullets in Org mode headings.

(fn &optional ARG)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-bullets" (quote ("org-bullets-")))) (provide (quote org-bullets-autoloads))) "outorg" ((outorg outorg-autoloads) (autoload (quote outorg-edit-as-org) "outorg" "Convert and copy to temporary Org buffer

With ARG, act conditional on the raw value of ARG:

| prefix | raw | action 1          | action 2                       |
|--------+-----+-------------------+--------------------------------|
| C-u    | (4) | edit-whole-buffer | ---                            |
| C-1    |   1 | edit-whole-buffer | insert default export-template |
| C-2    |   2 | edit-whole-buffer | prompt user for template-file  |
| C-3    |   3 | edit-whole-buffer | insert & keep default template |
| C-4    |   4 | edit-whole-buffer | insert & keep template-file    |
| C-5    |   5 | propagate changes | ---                            |

(fn &optional ARG)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "outorg" (quote ("out" "backward-line-comments" "forward-line-comments" "skip-line-comment-or-ws")))) (provide (quote outorg-autoloads))) "outshine" ((outshine outshine-org-cmds outshine-autoloads) (autoload (quote outshine-mode) "outshine" "Outshine brings the look&feel of Org-mode to the (GNU Emacs)
world outside of the Org major-mode.

(fn &optional ARG)" t nil) (autoload (quote outshine-hook-function) "outshine" "DEPRECATED, use `outshine-mode'.

(fn)" nil nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "outshine" (quote ("outshine-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "outshine-org-cmds" (quote ("outshine-")))) (provide (quote outshine-autoloads))) "navi-mode" ((navi-mode navi-mode-autoloads) (autoload (quote navi-search-and-switch) "navi-mode" "Call `occur' and immediatley switch to `*Navi:original-buffer-name*' buffer

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "navi-mode" (quote ("navi")))) (provide (quote navi-mode-autoloads))) "undo-tree" ((undo-tree undo-tree-autoloads) (autoload (quote undo-tree-mode) "undo-tree" "Toggle undo-tree mode.
With no argument, this command toggles the mode.
A positive prefix argument turns the mode on.
A negative prefix argument turns it off.

Undo-tree-mode replaces Emacs' standard undo feature with a more
powerful yet easier to use version, that treats the undo history
as what it is: a tree.

The following keys are available in `undo-tree-mode':

  \\{undo-tree-map}

Within the undo-tree visualizer, the following keys are available:

  \\{undo-tree-visualizer-mode-map}

(fn &optional ARG)" t nil) (defvar global-undo-tree-mode nil "Non-nil if Global Undo-Tree mode is enabled.
See the `global-undo-tree-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-undo-tree-mode'.") (custom-autoload (quote global-undo-tree-mode) "undo-tree" nil) (autoload (quote global-undo-tree-mode) "undo-tree" "Toggle Undo-Tree mode in all buffers.
With prefix ARG, enable Global Undo-Tree mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Undo-Tree mode is enabled in all buffers where
`turn-on-undo-tree-mode' would do it.
See `undo-tree-mode' for more information on Undo-Tree mode.

(fn &optional ARG)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "undo-tree" (quote ("undo-" "turn-on-undo-tree-mode" "*undo-tree-id-counter*" "buffer-undo-tree")))) (provide (quote undo-tree-autoloads))) "tabbar" ((tabbar tabbar-autoloads) (autoload (quote tabbar-backward) "tabbar" "Select the previous available tab.
Depend on the setting of the option `tabbar-cycle-scope'.

(fn)" t nil) (autoload (quote tabbar-forward) "tabbar" "Select the next available tab.
Depend on the setting of the option `tabbar-cycle-scope'.

(fn)" t nil) (autoload (quote tabbar-backward-group) "tabbar" "Go to selected tab in the previous available group.

(fn)" t nil) (autoload (quote tabbar-forward-group) "tabbar" "Go to selected tab in the next available group.

(fn)" t nil) (autoload (quote tabbar-backward-tab) "tabbar" "Select the previous visible tab.

(fn)" t nil) (autoload (quote tabbar-forward-tab) "tabbar" "Select the next visible tab.

(fn)" t nil) (autoload (quote tabbar-press-home) "tabbar" "Press the tab bar home button.
That is, simulate a mouse click on that button.
A numeric prefix ARG value of 2, or 3, respectively simulates a
mouse-2, or mouse-3 click.  The default is a mouse-1 click.

(fn &optional ARG)" t nil) (autoload (quote tabbar-press-scroll-left) "tabbar" "Press the tab bar scroll-left button.
That is, simulate a mouse click on that button.
A numeric prefix ARG value of 2, or 3, respectively simulates a
mouse-2, or mouse-3 click.  The default is a mouse-1 click.

(fn &optional ARG)" t nil) (autoload (quote tabbar-press-scroll-right) "tabbar" "Press the tab bar scroll-right button.
That is, simulate a mouse click on that button.
A numeric prefix ARG value of 2, or 3, respectively simulates a
mouse-2, or mouse-3 click.  The default is a mouse-1 click.

(fn &optional ARG)" t nil) (autoload (quote tabbar-mwheel-backward) "tabbar" "Select the previous available tab.
EVENT is the mouse event that triggered this command.
Mouse-enabled equivalent of the command `tabbar-backward'.

(fn EVENT)" t nil) (autoload (quote tabbar-mwheel-forward) "tabbar" "Select the next available tab.
EVENT is the mouse event that triggered this command.
Mouse-enabled equivalent of the command `tabbar-forward'.

(fn EVENT)" t nil) (autoload (quote tabbar-mwheel-backward-group) "tabbar" "Go to selected tab in the previous available group.
If there is only one group, select the previous visible tab.
EVENT is the mouse event that triggered this command.
Mouse-enabled equivalent of the command `tabbar-backward-group'.

(fn EVENT)" t nil) (autoload (quote tabbar-mwheel-forward-group) "tabbar" "Go to selected tab in the next available group.
If there is only one group, select the next visible tab.
EVENT is the mouse event that triggered this command.
Mouse-enabled equivalent of the command `tabbar-forward-group'.

(fn EVENT)" t nil) (autoload (quote tabbar-mwheel-backward-tab) "tabbar" "Select the previous visible tab.
EVENT is the mouse event that triggered this command.
Mouse-enabled equivalent of the command `tabbar-backward-tab'.

(fn EVENT)" t nil) (autoload (quote tabbar-mwheel-forward-tab) "tabbar" "Select the next visible tab.
EVENT is the mouse event that triggered this command.
Mouse-enabled equivalent of the command `tabbar-forward-tab'.

(fn EVENT)" t nil) (autoload (quote tabbar-mwheel-switch-tab) "tabbar" "Select the next or previous tab according to EVENT.

(fn EVENT)" t nil) (autoload (quote tabbar-mwheel-switch-group) "tabbar" "Select the next or previous group of tabs according to EVENT.

(fn EVENT)" t nil) (autoload (quote tabbar-local-mode) "tabbar" "Toggle local display of the tab bar.
With prefix argument ARG, turn on if positive, otherwise off.
Returns non-nil if the new state is enabled.
When turned on, if a local header line is shown, it is hidden to show
the tab bar.  The tab bar is locally hidden otherwise.  When turned
off, if a local header line is hidden or the tab bar is locally
hidden, it is shown again.  Signal an error if Tabbar mode is off.

(fn &optional ARG)" t nil) (defvar tabbar-mode nil "Non-nil if Tabbar mode is enabled.
See the `tabbar-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `tabbar-mode'.") (custom-autoload (quote tabbar-mode) "tabbar" nil) (autoload (quote tabbar-mode) "tabbar" "Toggle display of a tab bar in the header line.
With prefix argument ARG, turn on if positive, otherwise off.
Returns non-nil if the new state is enabled.

\\{tabbar-mode-map}

(fn &optional ARG)" t nil) (defvar tabbar-mwheel-mode nil "Non-nil if Tabbar-Mwheel mode is enabled.
See the `tabbar-mwheel-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `tabbar-mwheel-mode'.") (custom-autoload (quote tabbar-mwheel-mode) "tabbar" nil) (autoload (quote tabbar-mwheel-mode) "tabbar" "Toggle use of the mouse wheel to navigate through tabs or groups.
With prefix argument ARG, turn on if positive, otherwise off.
Returns non-nil if the new state is enabled.

\\{tabbar-mwheel-mode-map}

(fn &optional ARG)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "tabbar" (quote ("tabbar-")))) (provide (quote tabbar-autoloads))) "easy-kill" ((easy-kill easy-kill-autoloads) (autoload (quote easy-kill) "easy-kill" "Kill thing at point in the order of region, url, email and line.
Temporally activate additional key bindings as follows:

  letters => select or expand selection according to `easy-kill-alist';
  1..9    => expand selection by that number;
  0       => shrink to the initial selection;
  +,=/-   => expand or shrink selection;
  @       => append selection to previous kill;
  ?       => help;
  C-w     => kill selection;
  SPC     => cycle through things in `easy-kill-alist';
  C-SPC   => turn selection into an active region;
  C-g     => abort;
  others  => save selection and exit.

(fn &optional N)" t nil) (defalias (quote easy-mark-sexp) (quote easy-mark) "Use `easy-mark' instead. The alias may be removed in future.") (autoload (quote easy-mark) "easy-kill" "Similar to `easy-kill' (which see) but for marking.

(fn &optional N)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "easy-kill" (quote ("easy-")))) (provide (quote easy-kill-autoloads))) "lv" ((lv lv-autoloads) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "lv" (quote ("lv-")))) (provide (quote lv-autoloads))) "hydra" ((hydra hydra-ox hydra-examples hydra-autoloads) (autoload (quote defhydra) "hydra" "Create a Hydra - a family of functions with prefix NAME.

NAME should be a symbol, it will be the prefix of all functions
defined here.

BODY has the format:

    (BODY-MAP BODY-KEY &rest BODY-PLIST)

DOCSTRING will be displayed in the echo area to identify the
Hydra.  When DOCSTRING starts with a newline, special Ruby-style
substitution will be performed by `hydra--format'.

Functions are created on basis of HEADS, each of which has the
format:

    (KEY CMD &optional HINT &rest PLIST)

BODY-MAP is a keymap; `global-map' is used quite often.  Each
function generated from HEADS will be bound in BODY-MAP to
BODY-KEY + KEY (both are strings passed to `kbd'), and will set
the transient map so that all following heads can be called
though KEY only.  BODY-KEY can be an empty string.

CMD is a callable expression: either an interactive function
name, or an interactive lambda, or a single sexp (it will be
wrapped in an interactive lambda).

HINT is a short string that identifies its head.  It will be
printed beside KEY in the echo erea if `hydra-is-helpful' is not
nil.  If you don't even want the KEY to be printed, set HINT
explicitly to nil.

The heads inherit their PLIST from BODY-PLIST and are allowed to
override some keys.  The keys recognized are :exit, :bind, and :column.
:exit can be:

- nil (default): this head will continue the Hydra state.
- t: this head will stop the Hydra state.

:bind can be:
- nil: this head will not be bound in BODY-MAP.
- a lambda taking KEY and CMD used to bind a head.

:column is a string that sets the column for all subsequent heads.

It is possible to omit both BODY-MAP and BODY-KEY if you don't
want to bind anything.  In that case, typically you will bind the
generated NAME/body command.  This command is also the return
result of `defhydra'.

(fn NAME BODY &optional DOCSTRING &rest HEADS)" nil t) (function-put (quote defhydra) (quote lisp-indent-function) (quote defun)) (function-put (quote defhydra) (quote doc-string-elt) (quote 3)) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "hydra" (quote ("hydra-" "defhydra")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "hydra-examples" (quote ("hydra-" "org-agenda-cts" "whitespace-mode")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "hydra-ox" (quote ("hydra-ox")))) (provide (quote hydra-autoloads))) "avy" ((avy avy-autoloads) (autoload (quote avy-process) "avy" "Select one of CANDIDATES using `avy-read'.
Use OVERLAY-FN to visualize the decision overlay.
CLEANUP-FN should take no arguments and remove the effects of
multiple OVERLAY-FN invocations.

(fn CANDIDATES &optional OVERLAY-FN CLEANUP-FN)" nil nil) (autoload (quote avy-goto-char) "avy" "Jump to the currently visible CHAR.
The window scope is determined by `avy-all-windows' (ARG negates it).

(fn CHAR &optional ARG)" t nil) (autoload (quote avy-goto-char-in-line) "avy" "Jump to the currently visible CHAR in the current line.

(fn CHAR)" t nil) (autoload (quote avy-goto-char-2) "avy" "Jump to the currently visible CHAR1 followed by CHAR2.
The window scope is determined by `avy-all-windows'.
When ARG is non-nil, do the opposite of `avy-all-windows'.
BEG and END narrow the scope where candidates are searched.

(fn CHAR1 CHAR2 &optional ARG BEG END)" t nil) (autoload (quote avy-goto-char-2-above) "avy" "Jump to the currently visible CHAR1 followed by CHAR2.
This is a scoped version of `avy-goto-char-2', where the scope is
the visible part of the current buffer up to point.
The window scope is determined by `avy-all-windows'.
When ARG is non-nil, do the opposite of `avy-all-windows'.

(fn CHAR1 CHAR2 &optional ARG)" t nil) (autoload (quote avy-goto-char-2-below) "avy" "Jump to the currently visible CHAR1 followed by CHAR2.
This is a scoped version of `avy-goto-char-2', where the scope is
the visible part of the current buffer following point.
The window scope is determined by `avy-all-windows'.
When ARG is non-nil, do the opposite of `avy-all-windows'.

(fn CHAR1 CHAR2 &optional ARG)" t nil) (autoload (quote avy-isearch) "avy" "Jump to one of the current isearch candidates.

(fn)" t nil) (autoload (quote avy-goto-word-0) "avy" "Jump to a word start.
The window scope is determined by `avy-all-windows'.
When ARG is non-nil, do the opposite of `avy-all-windows'.
BEG and END narrow the scope where candidates are searched.

(fn ARG &optional BEG END)" t nil) (autoload (quote avy-goto-whitespace-end) "avy" "Jump to the end of a whitespace sequence.
The window scope is determined by `avy-all-windows'.
When ARG is non-nil, do the opposite of `avy-all-windows'.
BEG and END narrow the scope where candidates are searched.

(fn ARG &optional BEG END)" t nil) (autoload (quote avy-goto-word-1) "avy" "Jump to the currently visible CHAR at a word start.
The window scope is determined by `avy-all-windows'.
When ARG is non-nil, do the opposite of `avy-all-windows'.
BEG and END narrow the scope where candidates are searched.
When SYMBOL is non-nil, jump to symbol start instead of word start.

(fn CHAR &optional ARG BEG END SYMBOL)" t nil) (autoload (quote avy-goto-word-1-above) "avy" "Jump to the currently visible CHAR at a word start.
This is a scoped version of `avy-goto-word-1', where the scope is
the visible part of the current buffer up to point.
The window scope is determined by `avy-all-windows'.
When ARG is non-nil, do the opposite of `avy-all-windows'.

(fn CHAR &optional ARG)" t nil) (autoload (quote avy-goto-word-1-below) "avy" "Jump to the currently visible CHAR at a word start.
This is a scoped version of `avy-goto-word-1', where the scope is
the visible part of the current buffer following point.
The window scope is determined by `avy-all-windows'.
When ARG is non-nil, do the opposite of `avy-all-windows'.

(fn CHAR &optional ARG)" t nil) (autoload (quote avy-goto-symbol-1) "avy" "Jump to the currently visible CHAR at a symbol start.
The window scope is determined by `avy-all-windows'.
When ARG is non-nil, do the opposite of `avy-all-windows'.

(fn CHAR &optional ARG)" t nil) (autoload (quote avy-goto-symbol-1-above) "avy" "Jump to the currently visible CHAR at a symbol start.
This is a scoped version of `avy-goto-symbol-1', where the scope is
the visible part of the current buffer up to point.
The window scope is determined by `avy-all-windows'.
When ARG is non-nil, do the opposite of `avy-all-windows'.

(fn CHAR &optional ARG)" t nil) (autoload (quote avy-goto-symbol-1-below) "avy" "Jump to the currently visible CHAR at a symbol start.
This is a scoped version of `avy-goto-symbol-1', where the scope is
the visible part of the current buffer following point.
The window scope is determined by `avy-all-windows'.
When ARG is non-nil, do the opposite of `avy-all-windows'.

(fn CHAR &optional ARG)" t nil) (autoload (quote avy-goto-subword-0) "avy" "Jump to a word or subword start.
The window scope is determined by `avy-all-windows' (ARG negates it).

When PREDICATE is non-nil it's a function of zero parameters that
should return true.

BEG and END narrow the scope where candidates are searched.

(fn &optional ARG PREDICATE BEG END)" t nil) (autoload (quote avy-goto-subword-1) "avy" "Jump to the currently visible CHAR at a subword start.
The window scope is determined by `avy-all-windows' (ARG negates it).
The case of CHAR is ignored.

(fn CHAR &optional ARG)" t nil) (autoload (quote avy-goto-word-or-subword-1) "avy" "Forward to `avy-goto-subword-1' or `avy-goto-word-1'.
Which one depends on variable `subword-mode'.

(fn)" t nil) (autoload (quote avy-goto-line) "avy" "Jump to a line start in current buffer.

When ARG is 1, jump to lines currently visible, with the option
to cancel to `goto-line' by entering a number.

When ARG is 4, negate the window scope determined by
`avy-all-windows'.

Otherwise, forward to `goto-line' with ARG.

(fn &optional ARG)" t nil) (autoload (quote avy-goto-line-above) "avy" "Goto visible line above the cursor.
OFFSET changes the distance between the closest key to the cursor and
the cursor
When BOTTOM-UP is non-nil, display avy candidates from top to bottom

(fn &optional OFFSET BOTTOM-UP)" t nil) (autoload (quote avy-goto-line-below) "avy" "Goto visible line below the cursor.
OFFSET changes the distance between the closest key to the cursor and
the cursor
When BOTTOM-UP is non-nil, display avy candidates from top to bottom

(fn &optional OFFSET BOTTOM-UP)" t nil) (autoload (quote avy-goto-end-of-line) "avy" "Call `avy-goto-line' and move to the end of the line.

(fn &optional ARG)" t nil) (autoload (quote avy-copy-line) "avy" "Copy a selected line above the current line.
ARG lines can be used.

(fn ARG)" t nil) (autoload (quote avy-move-line) "avy" "Move a selected line above the current line.
ARG lines can be used.

(fn ARG)" t nil) (autoload (quote avy-copy-region) "avy" "Select two lines and copy the text between them to point.

The window scope is determined by `avy-all-windows' or
`avy-all-windows-alt' when ARG is non-nil.

(fn ARG)" t nil) (autoload (quote avy-move-region) "avy" "Select two lines and move the text between them above the current line.

(fn)" t nil) (autoload (quote avy-kill-region) "avy" "Select two lines and kill the region between them.

The window scope is determined by `avy-all-windows' or
`avy-all-windows-alt' when ARG is non-nil.

(fn ARG)" t nil) (autoload (quote avy-kill-ring-save-region) "avy" "Select two lines and save the region between them to the kill ring.
The window scope is determined by `avy-all-windows'.
When ARG is non-nil, do the opposite of `avy-all-windows'.

(fn ARG)" t nil) (autoload (quote avy-kill-whole-line) "avy" "Select line and kill the whole selected line.

With a numerical prefix ARG, kill ARG line(s) starting from the
selected line.  If ARG is negative, kill backward.

If ARG is zero, kill the selected line but exclude the trailing
newline.

\\[universal-argument] 3 \\[avy-kil-whole-line] kill three lines
starting from the selected line.  \\[universal-argument] -3

\\[avy-kill-whole-line] kill three lines backward including the
selected line.

(fn ARG)" t nil) (autoload (quote avy-kill-ring-save-whole-line) "avy" "Select line and save the whole selected line as if killed, but don\342\200\231t kill it.

This command is similar to `avy-kill-whole-line', except that it
saves the line(s) as if killed, but does not kill it(them).

With a numerical prefix ARG, kill ARG line(s) starting from the
selected line.  If ARG is negative, kill backward.

If ARG is zero, kill the selected line but exclude the trailing
newline.

(fn ARG)" t nil) (autoload (quote avy-setup-default) "avy" "Setup the default shortcuts.

(fn)" nil nil) (autoload (quote avy-goto-char-timer) "avy" "Read one or many consecutive chars and jump to the first one.
The window scope is determined by `avy-all-windows' (ARG negates it).

(fn &optional ARG)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "avy" (quote ("avy-")))) (provide (quote avy-autoloads))) "ace-window" ((ace-window ace-window-autoloads) (autoload (quote ace-select-window) "ace-window" "Ace select window.

(fn)" t nil) (autoload (quote ace-delete-window) "ace-window" "Ace delete window.

(fn)" t nil) (autoload (quote ace-swap-window) "ace-window" "Ace swap window.

(fn)" t nil) (autoload (quote ace-delete-other-windows) "ace-window" "Ace delete other windows.

(fn)" t nil) (autoload (quote ace-display-buffer) "ace-window" "Make `display-buffer' and `pop-to-buffer' select using `ace-window'.
See sample config for `display-buffer-base-action' and `display-buffer-alist':
https://github.com/abo-abo/ace-window/wiki/display-buffer.

(fn BUFFER ALIST)" nil nil) (autoload (quote ace-window) "ace-window" "Select a window.
Perform an action based on ARG described below.

By default, behaves like extended `other-window'.
See `aw-scope' which extends it to work with frames.

Prefixed with one \\[universal-argument], does a swap between the
selected window and the current window, so that the selected
buffer moves to current window (and current buffer moves to
selected window).

Prefixed with two \\[universal-argument]'s, deletes the selected
window.

(fn ARG)" t nil) (defvar ace-window-display-mode nil "Non-nil if Ace-Window-Display mode is enabled.
See the `ace-window-display-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `ace-window-display-mode'.") (custom-autoload (quote ace-window-display-mode) "ace-window" nil) (autoload (quote ace-window-display-mode) "ace-window" "Minor mode for showing the ace window key in the mode line.

(fn &optional ARG)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ace-window" (quote ("ace-window-mode" "aw-")))) (provide (quote ace-window-autoloads))) "markdown-mode" ((markdown-mode markdown-mode-autoloads) (autoload (quote markdown-mode) "markdown-mode" "Major mode for editing Markdown files.

(fn)" t nil) (add-to-list (quote auto-mode-alist) (quote ("\\.\\(?:md\\|markdown\\|mkd\\|mdown\\|mkdn\\|mdwn\\)\\'" . markdown-mode))) (autoload (quote gfm-mode) "markdown-mode" "Major mode for editing GitHub Flavored Markdown files.

(fn)" t nil) (autoload (quote markdown-view-mode) "markdown-mode" "Major mode for viewing Markdown content.

(fn)" t nil) (autoload (quote gfm-view-mode) "markdown-mode" "Major mode for viewing GitHub Flavored Markdown content.

(fn)" t nil) (autoload (quote markdown-live-preview-mode) "markdown-mode" "Toggle native previewing on save for a specific markdown file.

(fn &optional ARG)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "markdown-mode" (quote ("gfm-" "markdown" "defun-markdown-")))) (provide (quote markdown-mode-autoloads))) "rainbow-delimiters" ((rainbow-delimiters rainbow-delimiters-autoloads) (autoload (quote rainbow-delimiters-mode) "rainbow-delimiters" "Highlight nested parentheses, brackets, and braces according to their depth.

(fn &optional ARG)" t nil) (autoload (quote rainbow-delimiters-mode-enable) "rainbow-delimiters" "Enable `rainbow-delimiters-mode'.

(fn)" nil nil) (autoload (quote rainbow-delimiters-mode-disable) "rainbow-delimiters" "Disable `rainbow-delimiters-mode'.

(fn)" nil nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "rainbow-delimiters" (quote ("rainbow-delimiters-")))) (provide (quote rainbow-delimiters-autoloads))) "pcache" ((pcache pcache-autoloads) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "pcache" (quote ("pcache-" "constructor" "*pcache-repositor")))) (provide (quote pcache-autoloads))) "list-utils" ((list-utils list-utils-autoloads) (let ((loads (get (quote list-utils) (quote custom-loads)))) (if (member (quote "list-utils") loads) nil (put (quote list-utils) (quote custom-loads) (cons (quote "list-utils") loads)))) (require (quote cl)) (cl-defstruct tconc head tail) (autoload (quote tconc-list) "list-utils" "Efficiently append LIST to TC.

TC is a data structure created by `make-tconc'.

(fn TC LIST)" nil nil) (autoload (quote tconc) "list-utils" "Efficiently append ARGS to TC.

TC is a data structure created by `make-tconc'

Without ARGS, return the list held by TC.

(fn TC &rest ARGS)" nil nil) (autoload (quote list-utils-cons-cell-p) "list-utils" "Return non-nil if CELL holds a cons cell rather than a proper list.

A proper list is defined as a series of cons cells in which the
cdr slot of each cons holds a pointer to the next element of the
list, and the cdr slot in the final cons holds nil.

A plain cons cell, for the purpose of this function, is a single
cons in which the cdr holds data rather than a pointer to the
next cons cell, eg

    '(1 . 2)

In addition, a list which is not nil-terminated is not a proper
list and will be recognized by this function as a cons cell.
Such a list is printed using dot notation for the last two
elements, eg

    '(1 2 3 4 . 5)

Such improper lists are produced by `list*'.

(fn CELL)" nil nil) (autoload (quote list-utils-make-proper-copy) "list-utils" "Copy a cons cell or improper LIST into a proper list.

If optional TREE is non-nil, traverse LIST, making proper
copies of any improper lists contained within.

Optional RECUR-INTERNAL is for internal use only.

Improper lists consist of proper lists consed to a final
element, and are produced by `list*'.

(fn LIST &optional TREE RECUR-INTERNAL)" nil nil) (autoload (quote list-utils-make-proper-inplace) "list-utils" "Make a cons cell or improper LIST into a proper list.

Improper lists consist of proper lists consed to a final
element, and are produced by `list*'.

If optional TREE is non-nil, traverse LIST, making any
improper lists contained within into proper lists.

Optional RECUR-INTERNAL is for internal use only.

Modifies LIST and returns the modified value.

(fn LIST &optional TREE RECUR-INTERNAL)" nil nil) (autoload (quote list-utils-make-improper-copy) "list-utils" "Copy a proper LIST into an improper list.

Improper lists consist of proper lists consed to a final
element, and are produced by `list*'.

If optional TREE is non-nil, traverse LIST, making proper
copies of any improper lists contained within.

Optional RECUR-INTERNAL is for internal use only.

(fn LIST &optional TREE RECUR-INTERNAL)" nil nil) (autoload (quote list-utils-make-improper-inplace) "list-utils" "Make proper LIST into an improper list.

Improper lists consist of proper lists consed to a final
element, and are produced by `list*'.

If optional TREE is non-nil, traverse LIST, making any
proper lists contained within into improper lists.

Optional RECUR-INTERNAL is for internal use only.

Modifies LIST and returns the modified value.

(fn LIST &optional TREE RECUR-INTERNAL)" nil nil) (autoload (quote list-utils-linear-subseq) "list-utils" "Return the linear elements from a partially cyclic LIST.

If there is no cycle in LIST, return LIST.  If all elements of
LIST are included in a cycle, return nil.

As an optimization, CYCLE-LENGTH may be specified if the length
of the cyclic portion is already known.  Otherwise it will be
calculated from LIST.

(fn LIST &optional CYCLE-LENGTH)" nil nil) (autoload (quote list-utils-cyclic-subseq) "list-utils" "Return any cyclic elements from LIST as a circular list.

The first element of the cyclic structure is not guaranteed to be
first element of the return value unless FROM-START is non-nil.

To linearize the return value, use `list-utils-make-linear-inplace'.

If there is no cycle in LIST, return nil.

(fn LIST &optional FROM-START)" nil nil) (autoload (quote list-utils-cyclic-length) "list-utils" "Return the number of cyclic elements in LIST.

If some portion of LIST is linear, only the cyclic
elements will be counted.

If LIST is completely linear, return 0.

(fn LIST)" nil nil) (autoload (quote list-utils-cyclic-p) "list-utils" "Return non-nil if LIST contains any cyclic structures.

If optional PERFECT is set, only return non-nil if LIST is a
perfect non-branching cycle in which the last element points
to the first.

(fn LIST &optional PERFECT)" nil nil) (autoload (quote list-utils-linear-p) "list-utils" "Return non-nil if LIST is linear (no cyclic structure).

(fn LIST)" nil nil) (defalias (quote list-utils-improper-p) (quote list-utils-cons-cell-p)) (autoload (quote list-utils-safe-length) "list-utils" "Return the number of elements in LIST.

LIST may be linear or cyclic.

If LIST is not really a list, returns 0.

If LIST is an improper list, return the number of proper list
elements, like `safe-length'.

(fn LIST)" nil nil) (autoload (quote list-utils-flat-length) "list-utils" "Count simple elements from the beginning of LIST.

Stop counting when a cons is reached.  nil is not a cons,
and is considered to be a \"simple\" element.

If the car of LIST is a cons, return 0.

(fn LIST)" nil nil) (autoload (quote list-utils-make-linear-copy) "list-utils" "Return a linearized copy of LIST, which may be cyclic.

If optional TREE is non-nil, traverse LIST, substituting
linearized copies of any cyclic lists contained within.

(fn LIST &optional TREE)" nil nil) (autoload (quote list-utils-make-linear-inplace) "list-utils" "Linearize LIST, which may be cyclic.

Modifies LIST and returns the modified value.

If optional TREE is non-nil, traverse LIST, linearizing any
cyclic lists contained within.

(fn LIST &optional TREE)" nil nil) (autoload (quote list-utils-safe-equal) "list-utils" "Compare LIST-1 and LIST-2, which may be cyclic lists.

LIST-1 and LIST-2 may also contain cyclic lists, which are
each traversed and compared.  This function will not infloop
when cyclic lists are encountered.

Non-nil is returned only if the leaves of LIST-1 and LIST-2 are
`equal' and the structure is identical.

Optional TEST specifies a test, defaulting to `equal'.

If LIST-1 and LIST-2 are not actually lists, they are still
compared according to TEST.

(fn LIST-1 LIST-2 &optional TEST)" nil nil) (autoload (quote list-utils-depth) "list-utils" "Find the depth of LIST, which may contain other lists.

If LIST is not a list or is an empty list, returns a depth
of 0.

If LIST is a cons cell or a list which does not contain other
lists, returns a depth of 1.

(fn LIST)" nil nil) (autoload (quote list-utils-flatten) "list-utils" "Return a flattened copy of LIST, which may contain other lists.

This function flattens cons cells as lists, and
flattens circular list structures.

(fn LIST)" nil nil) (autoload (quote list-utils-insert-before) "list-utils" "Look in LIST for ELEMENT and insert NEW-ELEMENT before it.

Optional TEST sets the test used for a matching element, and
defaults to `equal'.

LIST is modified and the new value is returned.

(fn LIST ELEMENT NEW-ELEMENT &optional TEST)" nil nil) (autoload (quote list-utils-insert-after) "list-utils" "Look in LIST for ELEMENT and insert NEW-ELEMENT after it.

Optional TEST sets the test used for a matching element, and
defaults to `equal'.

LIST is modified and the new value is returned.

(fn LIST ELEMENT NEW-ELEMENT &optional TEST)" nil nil) (autoload (quote list-utils-insert-before-pos) "list-utils" "Look in LIST for position POS, and insert NEW-ELEMENT before.

POS is zero-indexed.

LIST is modified and the new value is returned.

(fn LIST POS NEW-ELEMENT)" nil nil) (autoload (quote list-utils-insert-after-pos) "list-utils" "Look in LIST for position POS, and insert NEW-ELEMENT after.

LIST is modified and the new value is returned.

(fn LIST POS NEW-ELEMENT)" nil nil) (autoload (quote list-utils-and) "list-utils" "Return the elements of LIST1 which are present in LIST2.

This is similar to `cl-intersection' (or `intersection') from
the cl library, except that `list-utils-and' preserves order,
does not uniquify the results, and exhibits more predictable
performance for large lists.

Order will follow LIST1.  Duplicates may be present in the result
as in LIST1.

TEST is an optional comparison function in the form of a
hash-table-test.  The default is `equal'.  Other valid values
include `eq' (built-in), `eql' (built-in), `list-utils-htt-='
(numeric), `list-utils-htt-case-fold-equal' (case-insensitive).
See `define-hash-table-test' to define your own tests.

HINT is an optional micro-optimization, predicting the size of
the list to be hashed (LIST2 unless FLIP is set).

When optional FLIP is set, the sense of the comparison is
reversed.  When FLIP is set, LIST2 will be the guide for the
order of the result, and will determine whether duplicates may
be returned.  Since this function preserves duplicates, setting
FLIP can change the number of elements in the result.

Performance: `list-utils-and' and friends use a general-purpose
hashing approach.  `intersection' and friends use pure iteration.
Iteration can be much faster in a few special cases, especially
when the number of elements is small.  In other scenarios,
iteration can be much slower.  Hashing has no worst-case
performance scenario, although it uses much more memory.  For
heavy-duty list operations, performance may be improved by
`let'ing `gc-cons-threshold' to a high value around sections that
make frequent use of this function.

(fn LIST1 LIST2 &optional TEST HINT FLIP)" nil nil) (autoload (quote list-utils-not) "list-utils" "Return the elements of LIST1 which are not present in LIST2.

This is similar to `cl-set-difference' (or `set-difference') from
the cl library, except that `list-utils-not' preserves order and
exhibits more predictable performance for large lists.  Order will
follow LIST1.  Duplicates may be present as in LIST1.

TEST is an optional comparison function in the form of a
hash-table-test.  The default is `equal'.  Other valid values
include `eq' (built-in), `eql' (built-in), `list-utils-htt-='
(numeric), `list-utils-htt-case-fold-equal' (case-insensitive).
See `define-hash-table-test' to define your own tests.

HINT is an optional micro-optimization, predicting the size of
the list to be hashed (LIST2 unless FLIP is set).

When optional FLIP is set, the sense of the comparison is
reversed, returning elements of LIST2 which are not present in
LIST1.  When FLIP is set, LIST2 will be the guide for the order
of the result, and will determine whether duplicates may be
returned.

Performance: see notes under `list-utils-and'.

(fn LIST1 LIST2 &optional TEST HINT FLIP)" nil nil) (autoload (quote list-utils-xor) "list-utils" "Return elements which are only present in either LIST1 or LIST2.

This is similar to `cl-set-exclusive-or' (or `set-exclusive-or')
from the cl library, except that `list-utils-xor' preserves order,
and exhibits more predictable performance for large lists.  Order
will follow LIST1, then LIST2.  Duplicates may be present as in
LIST1 or LIST2.

TEST is an optional comparison function in the form of a
hash-table-test.  The default is `equal'.  Other valid values
include `eq' (built-in), `eql' (built-in), `list-utils-htt-='
(numeric), `list-utils-htt-case-fold-equal' (case-insensitive).
See `define-hash-table-test' to define your own tests.

HINT is an optional micro-optimization, predicting the size of
the list to be hashed (LIST2 unless FLIP is set).

When optional FLIP is set, the sense of the comparison is
reversed, causing order and duplicates to follow LIST2, then
LIST1.

Performance: see notes under `list-utils-and'.

(fn LIST1 LIST2 &optional TEST HINT FLIP)" nil nil) (autoload (quote list-utils-uniq) "list-utils" "Return a uniquified copy of LIST, preserving order.

This is similar to `cl-remove-duplicates' (or `remove-duplicates')
from the cl library, except that `list-utils-uniq' preserves order,
and exhibits more predictable performance for large lists.  Order
will follow LIST.

TEST is an optional comparison function in the form of a
hash-table-test.  The default is `equal'.  Other valid values
include `eq' (built-in), `eql' (built-in), `list-utils-htt-='
(numeric), `list-utils-htt-case-fold-equal' (case-insensitive).
See `define-hash-table-test' to define your own tests.

HINT is an optional micro-optimization, predicting the size of
LIST.

Performance: see notes under `list-utils-and'.

(fn LIST &optional TEST HINT)" nil nil) (autoload (quote list-utils-dupes) "list-utils" "Return only duplicated elements from LIST, preserving order.

Duplicated elements may still exist in the result: this function
removes singlets.

TEST is an optional comparison function in the form of a
hash-table-test.  The default is `equal'.  Other valid values
include `eq' (built-in), `eql' (built-in), `list-utils-htt-='
(numeric), `list-utils-htt-case-fold-equal' (case-insensitive).
See `define-hash-table-test' to define your own tests.

HINT is an optional micro-optimization, predicting the size of
LIST.

Performance: see notes under `list-utils-and'.

(fn LIST &optional TEST HINT)" nil nil) (autoload (quote list-utils-singlets) "list-utils" "Return only singlet elements from LIST, preserving order.

Duplicated elements may not exist in the result.

TEST is an optional comparison function in the form of a
hash-table-test.  The default is `equal'.  Other valid values
include `eq' (built-in), `eql' (built-in), `list-utils-htt-='
(numeric), `list-utils-htt-case-fold-equal' (case-insensitive).
See `define-hash-table-test' to define your own tests.

HINT is an optional micro-optimization, predicting the size of
LIST.

Performance: see notes under `list-utils-and'.

(fn LIST &optional TEST HINT)" nil nil) (autoload (quote list-utils-partition-dupes) "list-utils" "Partition LIST into duplicates and singlets, preserving order.

The return value is an alist with two keys: 'dupes and 'singlets.
The two values of the alist are lists which, if combined, comprise
a complete copy of the elements of LIST.

Duplicated elements may still exist in the 'dupes partition.

TEST is an optional comparison function in the form of a
hash-table-test.  The default is `equal'.  Other valid values
include `eq' (built-in), `eql' (built-in), `list-utils-htt-='
(numeric), `list-utils-htt-case-fold-equal' (case-insensitive).
See `define-hash-table-test' to define your own tests.

HINT is an optional micro-optimization, predicting the size of
LIST.

Performance: see notes under `list-utils-and'.

(fn LIST &optional TEST HINT)" nil nil) (autoload (quote list-utils-alist-or-flat-length) "list-utils" "Count simple or cons-cell elements from the beginning of LIST.

Stop counting when a proper list of non-zero length is reached.

If the car of LIST is a list, return 0.

(fn LIST)" nil nil) (autoload (quote list-utils-alist-flatten) "list-utils" "Flatten LIST, which may contain other lists.  Do not flatten cons cells.

It is not guaranteed that the result contains *only* cons cells.
The result could contain other data types present in LIST.

This function simply avoids flattening single conses or improper
lists where the last two elements would be expressed as a dotted
pair.

(fn LIST)" nil nil) (autoload (quote list-utils-plist-reverse) "list-utils" "Return reversed copy of property-list PLIST, maintaining pair associations.

(fn PLIST)" nil nil) (autoload (quote list-utils-plist-del) "list-utils" "Delete from PLIST the property PROP and its associated value.

When PROP is not present in PLIST, there is no effect.

The new plist is returned; use `(setq x (list-utils-plist-del x prop))'
to be sure to use the new value.

This functionality overlaps with the undocumented `cl-do-remf'.

(fn PLIST PROP)" nil nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "list-utils" (quote ("list-utils-htt-")))) (provide (quote list-utils-autoloads))) "persistent-soft" ((persistent-soft persistent-soft-autoloads) (let ((loads (get (quote persistent-soft) (quote custom-loads)))) (if (member (quote "persistent-soft") loads) nil (put (quote persistent-soft) (quote custom-loads) (cons (quote "persistent-soft") loads)))) (autoload (quote persistent-soft-location-readable) "persistent-soft" "Return non-nil if LOCATION is a readable persistent-soft data store.

(fn LOCATION)" nil nil) (autoload (quote persistent-soft-location-destroy) "persistent-soft" "Destroy LOCATION (a persistent-soft data store).

Returns non-nil on confirmed success.

(fn LOCATION)" nil nil) (autoload (quote persistent-soft-exists-p) "persistent-soft" "Return t if SYMBOL exists in the LOCATION persistent data store.

This is a noop unless LOCATION is a string and pcache is loaded.

Returns nil on failure, without throwing an error.

(fn SYMBOL LOCATION)" nil nil) (autoload (quote persistent-soft-fetch) "persistent-soft" "Return the value for SYMBOL in the LOCATION persistent data store.

This is a noop unless LOCATION is a string and pcache is loaded.

Returns nil on failure, without throwing an error.

(fn SYMBOL LOCATION)" nil nil) (autoload (quote persistent-soft-flush) "persistent-soft" "Flush data for the LOCATION data store to disk.

(fn LOCATION)" nil nil) (autoload (quote persistent-soft-store) "persistent-soft" "Under SYMBOL, store VALUE in the LOCATION persistent data store.

This is a noop unless LOCATION is a string and pcache is loaded.

Optional EXPIRATION sets an expiry time in seconds.

Returns a true value if storage was successful.  Returns nil
on failure, without throwing an error.

(fn SYMBOL VALUE LOCATION &optional EXPIRATION)" nil nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "persistent-soft" (quote ("persistent-soft-")))) (provide (quote persistent-soft-autoloads))) "font-utils" ((font-utils font-utils-autoloads) (let ((loads (get (quote font-utils) (quote custom-loads)))) (if (member (quote "font-utils") loads) nil (put (quote font-utils) (quote custom-loads) (cons (quote "font-utils") loads)))) (autoload (quote font-utils-client-hostname) "font-utils" "Guess the client hostname, respecting $SSH_CONNECTION.

(fn)" nil nil) (autoload (quote font-utils-name-from-xlfd) "font-utils" "Return the font-family name from XLFD, a string.

This function accounts for the fact that the XLFD
delimiter, \"-\", is a legal character within fields.

(fn XLFD)" nil nil) (autoload (quote font-utils-parse-name) "font-utils" "Parse FONT-NAME which may contain fontconfig-style specifications.

Returns two-element list.  The car is the font family name as a string.
The cadr is the specifications as a normalized and sorted list.

(fn FONT-NAME)" nil nil) (autoload (quote font-utils-normalize-name) "font-utils" "Normalize FONT-NAME which may contain fontconfig-style specifications.

(fn FONT-NAME)" nil nil) (autoload (quote font-utils-lenient-name-equal) "font-utils" "Leniently match two strings, FONT-NAME-A and FONT-NAME-B.

(fn FONT-NAME-A FONT-NAME-B)" nil nil) (autoload (quote font-utils-is-qualified-variant) "font-utils" "Whether FONT-NAME-1 and FONT-NAME-2 are different variants of the same font.

Qualifications are fontconfig-style specifications added to a
font name, such as \":width=condensed\".

To return t, the font families must be identical, and the
qualifications must differ.  If FONT-NAME-1 and FONT-NAME-2 are
identical, returns nil.

(fn FONT-NAME-1 FONT-NAME-2)" nil nil) (autoload (quote font-utils-list-names) "font-utils" "Return a list of all font names on the current system.

(fn)" nil nil) (autoload (quote font-utils-read-name) "font-utils" "Read a font name using `completing-read'.

Underscores are removed from the return value.

Uses `ido-completing-read' if optional IDO is set.

(fn &optional IDO)" nil nil) (autoload (quote font-utils-exists-p) "font-utils" "Test whether FONT-NAME (a string or font object) exists.

FONT-NAME is a string, typically in Fontconfig font-name format.
A font-spec, font-vector, or font-object are accepted, though
the behavior for the latter two is not well defined.

Returns a matching font vector.

When POINT-SIZE is set, check for a specific font size.  Size may
also be given at the end of a string FONT-NAME, eg \"Monaco-12\".

When optional STRICT is given, FONT-NAME must will not be
leniently modified before passing to `font-info'.

Optional SCOPE is a list of font names, within which FONT-NAME
must (leniently) match.

(fn FONT-NAME &optional POINT-SIZE STRICT SCOPE)" nil nil) (autoload (quote font-utils-first-existing-font) "font-utils" "Return the (normalized) first existing font name from FONT-NAMES.

FONT-NAMES is a list, with each element typically in Fontconfig
font-name format.

The font existence-check is lazy; fonts after the first hit are
not checked.

If NO-NORMALIZE is given, the return value is exactly as the
member of FONT-NAMES.  Otherwise, the family name is extracted
from the XLFD returned by `font-info'.

(fn FONT-NAMES &optional NO-NORMALIZE)" nil nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "font-utils" (quote ("font-" "persistent-softest-")))) (provide (quote font-utils-autoloads))) "ucs-utils" ((ucs-utils ucs-utils-autoloads ucs-utils-6\.0-delta) (let ((loads (get (quote ucs-utils) (quote custom-loads)))) (if (member (quote "ucs-utils") loads) nil (put (quote ucs-utils) (quote custom-loads) (cons (quote "ucs-utils") loads)))) (autoload (quote ucs-utils-pretty-name) "ucs-utils" "Return a prettified UCS name for CHAR.

Based on `get-char-code-property'.  The result has been
title-cased for readability, and will not match into the
`ucs-utils-names' alist until it has been upcased.
`ucs-utils-char' can be used on the title-cased name.

Returns a hexified string if no name is found.  If NO-HEX is
non-nil, then a nil value will be returned when no name is
found.

(fn CHAR &optional NO-HEX)" nil nil) (autoload (quote ucs-utils-all-prettified-names) "ucs-utils" "All prettified UCS names, cached in list `ucs-utils-all-prettified-names'.

When optional PROGRESS is given, show progress when generating
cache.

When optional REGENERATE is given, re-generate cache.

(fn &optional PROGRESS REGENERATE)" nil nil) (autoload (quote ucs-utils-char) "ucs-utils" "Return the character corresponding to NAME, a UCS name.

NAME is matched leniently by `ucs-utils--lookup'.

Returns FALLBACK if NAME does not exist or is not displayable
according to TEST.  FALLBACK may be either a UCS name or
character, or one of the special symbols described in the next
paragraph.

If FALLBACK is nil or 'drop, returns nil on failure.  If FALLBACK
is 'error, throws an error on failure.

TEST is an optional predicate which characters must pass.  A
useful value is 'char-displayable-p, which is available as
the abbreviation 'cdp, unless you have otherwise defined that
symbol.

When NAME is a character, it passes through unchanged, unless
TEST is set, in which case it must pass TEST.

(fn NAME &optional FALLBACK TEST)" nil nil) (autoload (quote ucs-utils-first-existing-char) "ucs-utils" "Return the first existing character from SEQUENCE of character names.

TEST is an optional predicate which characters must pass.  A
useful value is 'char-displayable-p, which is available as
the abbreviation 'cdp, unless you have otherwise defined that
symbol.

(fn SEQUENCE &optional TEST)" nil nil) (autoload (quote ucs-utils-vector) "ucs-utils" "Return a vector corresponding to SEQUENCE of UCS names or characters.

If SEQUENCE is a single string or character, it will be coerced
to a list of length 1.  Each name in SEQUENCE is matched
leniently by `ucs-utils--lookup'.

FALLBACK should be a sequence of equal length to SEQUENCE, (or
one of the special symbols described in the next paragraph).  For
any element of SEQUENCE which does not exist or is not
displayable according to TEST, that element degrades to the
corresponding element of FALLBACK.

When FALLBACK is nil, characters which do not exist or are
undisplayable will be given as nils in the return value.  When
FALLBACK is 'drop, such characters will be silently dropped from
the return value.  When FALLBACK is 'error, such characters cause
an error to be thrown.

To allow fallbacks of arbitrary length, give FALLBACK as a vector-
of-vectors, with outer length equal to the length of sequence.  The
inner vectors may contain a sequence of characters, a literal
string, or nil.  Eg

   (ucs-utils-vector '(\"Middle Dot\" \"Ampersand\" \"Horizontal Ellipsis\")
                     '[?.           [?a ?n ?d]  [\"...\"]              ])

or

   (ucs-utils-vector \"Horizontal Ellipsis\" '[[\"...\"]])

TEST is an optional predicate which characters must pass.  A
useful value is 'char-displayable-p, which is available as
the abbreviation 'cdp, unless you have otherwise defined that
symbol.

If NO-FLATTEN is non-nil, then a vector-of-vectors may be returned
if multi-character fallbacks were used as in the example above.

(fn SEQUENCE &optional FALLBACK TEST NO-FLATTEN)" nil nil) (autoload (quote ucs-utils-string) "ucs-utils" "Return a string corresponding to SEQUENCE of UCS names or characters.

If SEQUENCE is a single string, it will be coerced to a list of
length 1.  Each name in SEQUENCE is matched leniently by
`ucs-utils--lookup'.

FALLBACK should be a sequence of equal length to SEQUENCE, (or
one of the special symbols described in the next paragraph).  For
any element of SEQUENCE which does not exist or is not
displayable according to TEST, that element degrades to the
corresponding element of FALLBACK.

When FALLBACK is nil or 'drop, characters which do not exist or
are undisplayable will be silently dropped from the return value.
When FALLBACK is 'error, such characters cause an error to be
thrown.

TEST is an optional predicate which characters must pass.  A
useful value is 'char-displayable-p, which is available as
the abbreviation 'cdp, unless you have otherwise defined that
symbol.

(fn SEQUENCE &optional FALLBACK TEST)" nil nil) (autoload (quote ucs-utils-intact-string) "ucs-utils" "Return a string corresponding to SEQUENCE of UCS names or characters.

This function differs from `ucs-utils-string' in that FALLBACK is
a non-optional single string, to be used unless every member of
SEQUENCE exists and passes TEST.  FALLBACK may not be nil, 'error,
or 'drop as in `ucs-utils-string'.

If SEQUENCE is a single string, it will be coerced to a list of
length 1.  Each name in SEQUENCE is matched leniently by
`ucs-utils--lookup'.

TEST is an optional predicate which characters must pass.  A
useful value is 'char-displayable-p, which is available as
the abbreviation 'cdp, unless you have otherwise defined that
symbol.

(fn SEQUENCE FALLBACK &optional TEST)" nil nil) (autoload (quote ucs-utils-subst-char-in-region) "ucs-utils" "From START to END, replace FROM-CHAR with TO-CHAR each time it occurs.

If optional arg NO-UNDO is non-nil, don't record this change for
undo and don't mark the buffer as really changed.

Characters may be of differing byte-lengths.

The character at the position END is not included, matching the
behavior of `subst-char-in-region'.

This function is slower than `subst-char-in-region'.

(fn START END FROM-CHAR TO-CHAR &optional NO-UNDO)" nil nil) (autoload (quote ucs-utils-read-char-by-name) "ucs-utils" "Read a character by its Unicode name or hex number string.

A wrapper for `read-char-by-name', with the option to use
`ido-completing-read'.

PROMPT is displayed, and a string that represents a character by
its name is read.

When IDO is set, several seconds are required on the first
run as all completion candidates are pre-generated.

(fn PROMPT &optional IDO)" nil nil) (autoload (quote ucs-utils-eval) "ucs-utils" "Display a string UCS name for the character at POS.

POS defaults to the current point.

If `transient-mark-mode' is enabled and there is an active
region, return a list of strings UCS names, one for each
character in the region.  If called from Lisp with an
explicit POS, ignores the region.

If called with universal prefix ARG, display the result
in a separate buffer.  If called with two universal
prefix ARGs, replace the current character or region with
its UCS name translation.

(fn &optional POS ARG)" t nil) (autoload (quote ucs-utils-ucs-insert) "ucs-utils" "Insert CHARACTER in COUNT copies, where CHARACTER is a Unicode code point.

Works like `ucs-insert', with the following differences

    * Uses `ido-completing-read' at the interactive prompt

    * If `transient-mark-mode' is enabled, and the region contains
      a valid UCS character name, that value is used as the
      character name and the region is replaced.

    * A UCS character name string may be passed for CHARACTER.

INHERIT is as documented at `ucs-insert'.

(fn CHARACTER &optional COUNT INHERIT)" t nil) (autoload (quote ucs-utils-install-aliases) "ucs-utils" "Install aliases outside the \"ucs-utils-\" namespace.

The following aliases will be installed:

    `ucs-char'                  for   `ucs-utils-char'
    `ucs-first-existing-char'   for   `ucs-utils-first-existing-char'
    `ucs-string'                for   `ucs-utils-string'
    `ucs-intact-string'         for   `ucs-utils-intact-string'
    `ucs-vector'                for   `ucs-utils-vector'
    `ucs-pretty-name'           for   `ucs-utils-pretty-name'
    `ucs-eval'                  for   `ucs-utils-eval'

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ucs-utils" (quote ("ucs-utils-" "persistent-soft" "character-name-history")))) (provide (quote ucs-utils-autoloads))) "unicode-fonts" ((unicode-fonts unicode-fonts-autoloads) (let ((loads (get (quote unicode-fonts) (quote custom-loads)))) (if (member (quote "unicode-fonts") loads) nil (put (quote unicode-fonts) (quote custom-loads) (cons (quote "unicode-fonts") loads)))) (let ((loads (get (quote unicode-fonts-tweaks) (quote custom-loads)))) (if (member (quote "unicode-fonts") loads) nil (put (quote unicode-fonts-tweaks) (quote custom-loads) (cons (quote "unicode-fonts") loads)))) (let ((loads (get (quote unicode-fonts-debug) (quote custom-loads)))) (if (member (quote "unicode-fonts") loads) nil (put (quote unicode-fonts-debug) (quote custom-loads) (cons (quote "unicode-fonts") loads)))) (autoload (quote unicode-fonts-first-existing-font) "unicode-fonts" "Return the (normalized) first existing font name from FONT-NAMES.

FONT-NAMES is a list, with each element typically in Fontconfig
font-name format.

The font existence-check is lazy; fonts after the first hit are
not checked.

(fn FONT-NAMES)" nil nil) (autoload (quote unicode-fonts-font-exists-p) "unicode-fonts" "Run `font-utils-exists-p' with a limited scope.

The scope is defined by `unicode-fonts-restrict-to-fonts'.

FONT-NAME, POINT-SIZE, and STRICT are as documented at
`font-utils-exists-p'.

(fn FONT-NAME &optional POINT-SIZE STRICT)" nil nil) (autoload (quote unicode-fonts-read-block-name) "unicode-fonts" "Read a Unicode block name using `completing-read'.

Spaces are replaced with underscores in completion values, but
are removed from the return value.

Use `ido-completing-read' if IDO is set.

(fn &optional IDO)" nil nil) (autoload (quote unicode-fonts-setup) "unicode-fonts" "Set up Unicode fonts for FONTSET-NAMES.

Optional FONTSET-NAMES must be a list of strings.  Fontset names
which do not currently exist will be ignored.  The default value
is `unicode-fonts-fontset-names'.

Optional REGENERATE requests that the disk cache be invalidated
and regenerated.

(fn &optional FONTSET-NAMES REGENERATE)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "unicode-fonts" (quote ("unicode-" "persistent-softest-")))) (provide (quote unicode-fonts-autoloads))) "telephone-line" ((telephone-line telephone-line-utils telephone-line-separators telephone-line-segments telephone-line-config telephone-line-autoloads) (defvar telephone-line-mode nil "Non-nil if Telephone-Line mode is enabled.
See the `telephone-line-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `telephone-line-mode'.") (custom-autoload (quote telephone-line-mode) "telephone-line" nil) (autoload (quote telephone-line-mode) "telephone-line" "Toggle telephone-line on or off.

(fn &optional ARG)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "telephone-line" (quote ("telephone-line-")))) (autoload (quote telephone-line-evil-config) "telephone-line-config" "Deprecated, just call (telephone-line-mode t) instead.

(fn)" nil nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "telephone-line-segments" (quote ("telephone-line-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "telephone-line-separators" (quote ("telephone-line-")))) (autoload (quote telephone-line-defsegment*) "telephone-line-utils" "Define NAME as a segment function.

Does not check if segment is empty; will always display on non-nil result.

(fn NAME &rest BODY)" nil t) (function-put (quote telephone-line-defsegment*) (quote doc-string-elt) (quote 3)) (function-put (quote telephone-line-defsegment*) (quote lisp-indent-function) (quote defun)) (autoload (quote telephone-line-defsegment) "telephone-line-utils" "Define NAME as a segment function.

Empty strings will not render.

(fn NAME &rest BODY)" nil t) (function-put (quote telephone-line-defsegment) (quote doc-string-elt) (quote 3)) (function-put (quote telephone-line-defsegment) (quote lisp-indent-function) (quote defun)) (autoload (quote telephone-line-raw) "telephone-line-utils" "Conditionally render STR as mode-line data, or just verify output if not PREFORMATTED.
Return nil for blank/empty strings.

(fn STR &optional PREFORMATTED)" nil nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "telephone-line-utils" (quote ("telephone-line-")))) (provide (quote telephone-line-autoloads))) "async" ((smtpmail-async dired-async async async-pkg async-bytecomp async-autoloads) (autoload (quote async-start-process) "async" "Start the executable PROGRAM asynchronously named NAME.  See `async-start'.
PROGRAM is passed PROGRAM-ARGS, calling FINISH-FUNC with the
process object when done.  If FINISH-FUNC is nil, the future
object will return the process object when the program is
finished.  Set DEFAULT-DIRECTORY to change PROGRAM's current
working directory.

(fn NAME PROGRAM FINISH-FUNC &rest PROGRAM-ARGS)" nil nil) (autoload (quote async-start) "async" "Execute START-FUNC (often a lambda) in a subordinate Emacs process.
When done, the return value is passed to FINISH-FUNC.  Example:

    (async-start
       ;; What to do in the child process
       (lambda ()
         (message \"This is a test\")
         (sleep-for 3)
         222)

       ;; What to do when it finishes
       (lambda (result)
         (message \"Async process done, result should be 222: %s\"
                  result)))

If FINISH-FUNC is nil or missing, a future is returned that can
be inspected using `async-get', blocking until the value is
ready.  Example:

    (let ((proc (async-start
                   ;; What to do in the child process
                   (lambda ()
                     (message \"This is a test\")
                     (sleep-for 3)
                     222))))

        (message \"I'm going to do some work here\") ;; ....

        (message \"Waiting on async process, result should be 222: %s\"
                 (async-get proc)))

If you don't want to use a callback, and you don't care about any
return value from the child process, pass the `ignore' symbol as
the second argument (if you don't, and never call `async-get', it
will leave *emacs* process buffers hanging around):

    (async-start
     (lambda ()
       (delete-file \"a remote file on a slow link\" nil))
     'ignore)

Note: Even when FINISH-FUNC is present, a future is still
returned except that it yields no value (since the value is
passed to FINISH-FUNC).  Call `async-get' on such a future always
returns nil.  It can still be useful, however, as an argument to
`async-ready' or `async-wait'.

(fn START-FUNC &optional FINISH-FUNC)" nil nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "async" (quote ("async-")))) (autoload (quote async-byte-recompile-directory) "async-bytecomp" "Compile all *.el files in DIRECTORY asynchronously.
All *.elc files are systematically deleted before proceeding.

(fn DIRECTORY &optional QUIET)" nil nil) (defvar async-bytecomp-package-mode nil "Non-nil if Async-Bytecomp-Package mode is enabled.
See the `async-bytecomp-package-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `async-bytecomp-package-mode'.") (custom-autoload (quote async-bytecomp-package-mode) "async-bytecomp" nil) (autoload (quote async-bytecomp-package-mode) "async-bytecomp" "Byte compile asynchronously packages installed with package.el.
Async compilation of packages can be controlled by
`async-bytecomp-allowed-packages'.

(fn &optional ARG)" t nil) (autoload (quote async-byte-compile-file) "async-bytecomp" "Byte compile Lisp code FILE asynchronously.

Same as `byte-compile-file' but asynchronous.

(fn FILE)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "async-bytecomp" (quote ("async-byte")))) (defvar dired-async-mode nil "Non-nil if Dired-Async mode is enabled.
See the `dired-async-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `dired-async-mode'.") (custom-autoload (quote dired-async-mode) "dired-async" nil) (autoload (quote dired-async-mode) "dired-async" "Do dired actions asynchronously.

(fn &optional ARG)" t nil) (autoload (quote dired-async-do-copy) "dired-async" "Run \342\200\230dired-do-copy\342\200\231 asynchronously.

(fn &optional ARG)" t nil) (autoload (quote dired-async-do-symlink) "dired-async" "Run \342\200\230dired-do-symlink\342\200\231 asynchronously.

(fn &optional ARG)" t nil) (autoload (quote dired-async-do-hardlink) "dired-async" "Run \342\200\230dired-do-hardlink\342\200\231 asynchronously.

(fn &optional ARG)" t nil) (autoload (quote dired-async-do-rename) "dired-async" "Run \342\200\230dired-do-rename\342\200\231 asynchronously.

(fn &optional ARG)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "dired-async" (quote ("dired-async-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "smtpmail-async" (quote ("async-smtpmail-")))) (provide (quote async-autoloads))) "popup" ((popup popup-autoloads) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "popup" (quote ("popup-")))) (provide (quote popup-autoloads))) "helm-core" ((helm helm-source helm-multi-match helm-lib helm-core-pkg helm-core-autoloads) (autoload (quote helm-configuration) "helm" "Customize Helm.

(fn)" t nil) (autoload (quote helm-define-multi-key) "helm" "In KEYMAP, define key sequence KEY for function list FUNCTIONS.
Each function runs sequentially for each KEY press.
If DELAY is specified, switch back to initial function of FUNCTIONS list
after DELAY seconds.
The functions in FUNCTIONS list take no args.
E.g.
    (defun foo ()
      (interactive)
      (message \"Run foo\"))
    (defun bar ()
      (interactive)
      (message \"Run bar\"))
    (defun baz ()
      (interactive)
      (message \"Run baz\"))

(helm-define-multi-key global-map (kbd \"<f5> q\") '(foo bar baz) 2)

Each time \"<f5> q\" is pressed, the next function is executed.
Waiting more than 2 seconds between key presses switches back to
executing the first function on the next hit.

(fn KEYMAP KEY FUNCTIONS &optional DELAY)" nil nil) (autoload (quote helm-multi-key-defun) "helm" "Define NAME as a multi-key command running FUNS.
After DELAY seconds, the FUNS list is reinitialized.
See `helm-define-multi-key'.

(fn NAME DOCSTRING FUNS &optional DELAY)" nil t) (function-put (quote helm-multi-key-defun) (quote lisp-indent-function) (quote 2)) (autoload (quote helm-define-key-with-subkeys) "helm" "Define in MAP a KEY and SUBKEY to COMMAND.

This allows typing KEY to call COMMAND the first time and
type only SUBKEY on subsequent calls.

Arg MAP is the keymap to use, SUBKEY is the initial short
key binding to call COMMAND.

Arg OTHER-SUBKEYS is an alist specifying other short key bindings
to use once started, e.g.:

    (helm-define-key-with-subkeys global-map
       (kbd \"C-x v n\") ?n 'git-gutter:next-hunk
       '((?p . git-gutter:previous-hunk)))

In this example, `C-x v n' will run `git-gutter:next-hunk'
subsequent \"n\" will run this command again and subsequent \"p\"
will run `git-gutter:previous-hunk'.

If specified PROMPT can be displayed in minibuffer to describe
SUBKEY and OTHER-SUBKEYS.  Arg EXIT-FN specifies a function to run
on exit.

For any other key pressed, run their assigned command as defined
in MAP and then exit the loop running EXIT-FN, if specified.

NOTE: SUBKEY and OTHER-SUBKEYS bindings support only char syntax
and vectors, so don't use strings to define them.

(fn MAP KEY SUBKEY COMMAND &optional OTHER-SUBKEYS PROMPT EXIT-FN)" nil nil) (function-put (quote helm-define-key-with-subkeys) (quote lisp-indent-function) (quote 1)) (autoload (quote helm-debug-open-last-log) "helm" "Open Helm log file or buffer of last Helm session.

(fn)" t nil) (autoload (quote helm) "helm" "Main function to execute helm sources.

PLIST is a list like

(:key1 val1 :key2 val2 ...)

 or

(&optional sources input prompt resume preselect
            buffer keymap default history allow-nest).

** Keywords

Keywords supported:

- :sources
- :input
- :prompt
- :resume
- :preselect
- :buffer
- :keymap
- :default
- :history
- :allow-nest

Extra LOCAL-VARS keywords are supported, see the \"** Other
keywords\" section below.

Basic keywords are the following:

*** :sources

One of the following:

- List of sources
- Symbol whose value is a list of sources
- Alist representing a Helm source.
  - In this case the source has no name and is referenced in
    `helm-sources' as a whole alist.

*** :input

Initial input of minibuffer (temporary value of `helm-pattern')

*** :prompt

Minibuffer prompt. Default value is `helm--prompt'.

*** :resume

If t, allow resumption of the previous session of this Helm
command, skipping initialization.

If 'noresume, this instance of `helm' cannot be resumed.

*** :preselect

Initially selected candidate (string or regexp).

*** :buffer

Buffer name for this Helm session. `helm-buffer' will take this value.

*** :keymap

[Obsolete]

Keymap used at the start of this Helm session.

It is overridden by keymaps specified in sources, and is kept
only for backward compatibility.

Keymaps should be specified in sources using the :keymap slot
instead. See `helm-source'.

This keymap is not restored by `helm-resume'.

*** :default

Default value inserted into the minibuffer with
\\<minibuffer-local-map>\\[next-history-element].

It can be a string or a list of strings, in this case
\\<minibuffer-local-map>\\[next-history-element] cycles through
the list items, starting with the first.

If nil, `thing-at-point' is used.

If `helm-maybe-use-default-as-input' is non-nil, display is
updated using this value if this value matches, otherwise it is
ignored. If :input is specified, it takes precedence on :default.

*** :history

Minibuffer input, by default, is pushed to `minibuffer-history'.

When an argument HISTORY is provided, input is pushed to
HISTORY. HISTORY should be a valid symbol.

*** :allow-nest

Allow running this Helm command in a running Helm session.

** Other keywords

Other keywords are interpreted as local variables of this Helm
session. The `helm-' prefix can be omitted. For example,

(helm :sources 'helm-source-buffers-list
       :buffer \"*helm buffers*\"
       :candidate-number-limit 10)

Starts a Helm session with the variable
`helm-candidate-number-limit' set to 10.

** Backward compatibility

For backward compatibility, positional parameters are
supported:

(helm sources input prompt resume preselect
       buffer keymap default history allow-nest)

However, the use of non-keyword args is deprecated.

(fn &key SOURCES INPUT PROMPT RESUME PRESELECT BUFFER KEYMAP DEFAULT HISTORY ALLOW-NEST OTHER-LOCAL-VARS)" nil nil) (autoload (quote helm-cycle-resume) "helm" "Cycle in `helm-buffers' list and resume when waiting more than 1.2s.

(fn)" t nil) (autoload (quote helm-other-buffer) "helm" "Simplified Helm interface with other `helm-buffer'.
Call `helm' only with SOURCES and BUFFER as args.

(fn SOURCES BUFFER)" nil nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm" (quote ("helm-" "with-helm-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-lib" (quote ("helm-" "with-helm-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-multi-match" (quote ("helm-m")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-source" (quote ("helm-")))) (provide (quote helm-core-autoloads))) "helm" ((helm-x-files helm-utils helm-types helm-tags helm-sys helm-shell helm-semantic helm-ring helm-regexp helm-pkg helm-occur helm-net helm-mode helm-misc helm-man helm-locate helm-info helm-imenu helm-id-utils helm-help helm-grep helm-global-bindings helm-for-files helm-font helm-find helm-files helm-external helm-eval helm-eshell helm-elisp helm-elisp-package helm-easymenu helm-dabbrev helm-config helm-command helm-comint helm-color helm-buffers helm-bookmark helm-autoloads helm-adaptive) (defvar helm-adaptive-mode nil "Non-nil if Helm-Adaptive mode is enabled.
See the `helm-adaptive-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `helm-adaptive-mode'.") (custom-autoload (quote helm-adaptive-mode) "helm-adaptive" nil) (autoload (quote helm-adaptive-mode) "helm-adaptive" "Toggle adaptive sorting in all sources.

(fn &optional ARG)" t nil) (autoload (quote helm-reset-adaptive-history) "helm-adaptive" "Delete all `helm-adaptive-history' and his file.
Useful when you have a old or corrupted
`helm-adaptive-history-file'.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-adaptive" (quote ("helm-adapt")))) (autoload (quote helm-bookmarks) "helm-bookmark" "Preconfigured `helm' for bookmarks.

(fn)" t nil) (autoload (quote helm-filtered-bookmarks) "helm-bookmark" "Preconfigured `helm' for bookmarks (filtered by category).
Optional source `helm-source-bookmark-addressbook' is loaded only
if external addressbook-bookmark package is installed.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-bookmark" (quote ("helm-" "bmkext-jump-" "bookmark")))) (autoload (quote helm-buffers-list) "helm-buffers" "Preconfigured `helm' to list buffers.

(fn)" t nil) (autoload (quote helm-mini) "helm-buffers" "Preconfigured `helm' displaying `helm-mini-default-sources'.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-buffers" (quote ("helm-")))) (autoload (quote helm-colors) "helm-color" "Preconfigured `helm' for color.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-color" (quote ("helm-")))) (autoload (quote helm-comint-prompts) "helm-comint" "Pre-configured `helm' to browse the prompts of the current comint buffer.

(fn)" t nil) (autoload (quote helm-comint-prompts-all) "helm-comint" "Pre-configured `helm' to browse the prompts of all comint sessions.

(fn)" t nil) (autoload (quote helm-comint-input-ring) "helm-comint" "Preconfigured `helm' that provide completion of `comint' history.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-comint" (quote ("helm-")))) (autoload (quote helm-M-x) "helm-command" "Preconfigured `helm' for Emacs commands.
It is `helm' replacement of regular `M-x'
`execute-extended-command'.

Unlike regular `M-x' Emacs vanilla `execute-extended-command'
command, the prefix args if needed, can be passed AFTER starting
`helm-M-x'.  When a prefix arg is passed BEFORE starting
`helm-M-x', the first `C-u' while in `helm-M-x' session will
disable it.

You can get help on each command by persistent action.

(fn ARG)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-command" (quote ("helm-")))) (autoload (quote helm-dabbrev) "helm-dabbrev" "Preconfigured helm for dynamic abbreviations.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-dabbrev" (quote ("helm-dabbrev-")))) (autoload (quote helm-lisp-completion-at-point) "helm-elisp" "Preconfigured Helm for Lisp symbol completion at point.

(fn)" t nil) (autoload (quote helm-complete-file-name-at-point) "helm-elisp" "Preconfigured Helm to complete file name at point.

(fn &optional FORCE)" t nil) (autoload (quote helm-lisp-indent) "helm-elisp" "

(fn)" t nil) (autoload (quote helm-lisp-completion-or-file-name-at-point) "helm-elisp" "Preconfigured Helm to complete Lisp symbol or filename at point.
Filename completion happens if string start after or between a
double quote.

(fn)" t nil) (autoload (quote helm-apropos) "helm-elisp" "Preconfigured Helm to describe commands, functions, variables and faces.
In non interactives calls DEFAULT argument should be provided as
a string, i.e. the `symbol-name' of any existing symbol.

(fn DEFAULT)" t nil) (autoload (quote helm-manage-advice) "helm-elisp" "Preconfigured `helm' to disable/enable function advices.

(fn)" t nil) (autoload (quote helm-locate-library) "helm-elisp" "Preconfigured helm to locate elisp libraries.

(fn)" t nil) (autoload (quote helm-timers) "helm-elisp" "Preconfigured `helm' for timers.

(fn)" t nil) (autoload (quote helm-complex-command-history) "helm-elisp" "Preconfigured `helm' for complex command history.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-elisp" (quote ("helm-" "with-helm-show-completion")))) (autoload (quote helm-list-elisp-packages) "helm-elisp-package" "Preconfigured `helm' for listing and handling Emacs packages.

(fn ARG)" t nil) (autoload (quote helm-list-elisp-packages-no-fetch) "helm-elisp-package" "Preconfigured Helm for Emacs packages.

Same as `helm-list-elisp-packages' but don't fetch packages on
remote.  Called with a prefix ARG always fetch packages on
remote.

(fn ARG)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-elisp-package" (quote ("helm-")))) (autoload (quote helm-esh-pcomplete) "helm-eshell" "Preconfigured `helm' to provide Helm completion in Eshell.

(fn)" t nil) (autoload (quote helm-eshell-history) "helm-eshell" "Preconfigured Helm for Eshell history.

(fn)" t nil) (autoload (quote helm-eshell-prompts) "helm-eshell" "Pre-configured `helm' to browse the prompts of the current Eshell.

(fn)" t nil) (autoload (quote helm-eshell-prompts-all) "helm-eshell" "Pre-configured `helm' to browse the prompts of all Eshell sessions.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-eshell" (quote ("helm-e")))) (autoload (quote helm-eval-expression) "helm-eval" "Preconfigured `helm' for `helm-source-evaluation-result'.

(fn ARG)" t nil) (autoload (quote helm-eval-expression-with-eldoc) "helm-eval" "Preconfigured `helm' for `helm-source-evaluation-result' with `eldoc' support.

(fn)" t nil) (autoload (quote helm-calcul-expression) "helm-eval" "Preconfigured `helm' for `helm-source-calculation-result'.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-eval" (quote ("helm-")))) (autoload (quote helm-run-external-command) "helm-external" "Preconfigured `helm' to run External PROGRAM asyncronously from Emacs.
If program is already running exit with error.
You can set your own list of commands with
`helm-external-commands-list'.

(fn PROGRAM)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-external" (quote ("helm-")))) (defvar helm-ff-cache-mode nil "Non-nil if Helm-Ff-Cache mode is enabled.
See the `helm-ff-cache-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `helm-ff-cache-mode'.") (custom-autoload (quote helm-ff-cache-mode) "helm-files" nil) (autoload (quote helm-ff-cache-mode) "helm-files" "Auto refresh `helm-find-files' cache when emacs is idle.

You probably don't want to start this mode directly.  Instead you
should customize `helm-ff-keep-cached-candidates' to a non nil
value to enable it.

With `helm-ff-keep-cached-candidates' set to a nil value the mode
will disable itself.

When Emacs is idle, refresh the cache all the
`helm-ff-refresh-cache-delay' seconds then stop when done or after
`helm-ff-cache-mode-max-idle-time' if emacs is still idle.

(fn &optional ARG)" t nil) (autoload (quote helm-projects-history) "helm-files" "

(fn ARG)" t nil) (autoload (quote helm-browse-project) "helm-files" "Preconfigured helm to browse projects.
Browse files and see status of project with its VCS.
Only HG and GIT are supported for now.
Fall back to `helm-browse-project-find-files' if current
directory is not under control of one of those VCS.
With a prefix ARG browse files recursively, with two prefix ARG
rebuild the cache.
If the current directory is found in the cache, start
`helm-browse-project-find-files' even with no prefix ARG.
NOTE: The prefix ARG have no effect on the VCS controlled
directories.

Needed dependencies for VCS:
<https://github.com/emacs-helm/helm-ls-git>
and
<https://github.com/emacs-helm/helm-ls-hg>.

(fn ARG)" t nil) (autoload (quote helm-find-files) "helm-files" "Preconfigured `helm' for helm implementation of `find-file'.
Called with a prefix arg show history if some.
Don't call it from programs, use `helm-find-files-1' instead.
This is the starting point for nearly all actions you can do on
files.

(fn ARG)" t nil) (autoload (quote helm-delete-tramp-connection) "helm-files" "Allow deleting tramp connection or marked tramp connections at once.

This replace `tramp-cleanup-connection' which is partially broken
in Emacs < to 25.1.50.1 (See Emacs Bug#24432).

It allows additionally to delete more than one connection at
once.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-files" (quote ("helm-" "eshell-command-aliases-list")))) (autoload (quote helm-find) "helm-find" "Preconfigured `helm' for the find shell command.

Recursively find files whose names are matched by all specified
globbing PATTERNs under the current directory using the external
program specified in `find-program' (usually \"find\").  Every
input PATTERN is silently wrapped into two stars: *PATTERN*.

With prefix argument, prompt for a directory to search.

When user option `helm-findutils-search-full-path' is non-nil,
match against complete paths, otherwise, against file names
without directory part.

The (possibly empty) list of globbing PATTERNs can be followed by
the separator \"*\" plus any number of additional arguments that
are passed to \"find\" literally.

(fn ARG)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-find" (quote ("helm-")))) (autoload (quote helm-select-xfont) "helm-font" "Preconfigured `helm' to select Xfont.

(fn)" t nil) (autoload (quote helm-ucs) "helm-font" "Preconfigured `helm' for `ucs-names'.

Called with a prefix arg force reloading cache.

(fn ARG)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-font" (quote ("helm-")))) (autoload (quote helm-for-files) "helm-for-files" "Preconfigured `helm' for opening files.
Run all sources defined in `helm-for-files-preferred-list'.

(fn)" t nil) (autoload (quote helm-multi-files) "helm-for-files" "Preconfigured helm like `helm-for-files' but running locate only on demand.

Allow toggling back and forth from locate to others sources with
`helm-multi-files-toggle-locate-binding' key.
This avoids launching locate needlessly when what you are
searching for is already found.

(fn)" t nil) (autoload (quote helm-recentf) "helm-for-files" "Preconfigured `helm' for `recentf'.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-for-files" (quote ("helm-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-global-bindings" (quote ("helm-")))) (autoload (quote helm-goto-precedent-file) "helm-grep" "Go to previous file in Helm grep/etags buffers.

(fn)" t nil) (autoload (quote helm-goto-next-file) "helm-grep" "Go to previous file in Helm grep/etags buffers.

(fn)" t nil) (autoload (quote helm-do-grep-ag) "helm-grep" "Preconfigured `helm' for grepping with AG in `default-directory'.
With prefix arg prompt for type if available with your AG
version.

(fn ARG)" t nil) (autoload (quote helm-grep-do-git-grep) "helm-grep" "Preconfigured `helm' for git-grepping `default-directory'.
With a prefix arg ARG git-grep the whole repository.

(fn ARG)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-grep" (quote ("helm-")))) (autoload (quote helm-documentation) "helm-help" "Preconfigured `helm' for Helm documentation.
With a prefix arg refresh the documentation.

Find here the documentation of all documented sources.

(fn)" t nil) (defvar helm-comp-read-mode-line "\\<helm-comp-read-map>C/\\[helm-cr-empty-string]:Empty \\<helm-map>\\[helm-help]:Help \\[helm-select-action]:Act \\[helm-maybe-exit-minibuffer]/f1/f2/f-n:NthAct \\[helm-toggle-suspend-update]:Tog.suspend \\[helm-customize-group]:Conf") (defvar helm-read-file-name-mode-line-string "\\<helm-read-file-map>\\[helm-help]:Help C/\\[helm-cr-empty-string]:Empty \\<helm-map>\\[helm-select-action]:Act \\[helm-maybe-exit-minibuffer]/f1/f2/f-n:NthAct \\[helm-toggle-suspend-update]:Tog.suspend \\[helm-customize-group]:Conf" "String displayed in mode-line in `helm-source-find-files'.") (defvar helm-top-mode-line "\\<helm-top-map>\\[helm-help]:Help \\<helm-map>\\[helm-select-action]:Act \\[helm-maybe-exit-minibuffer]/f1/f2/f-n:NthAct \\[helm-toggle-suspend-update]:Tog.suspend \\[helm-customize-group]:Conf") (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-help" (quote ("helm-")))) (autoload (quote helm-gid) "helm-id-utils" "Preconfigured `helm' for `gid' command line of `ID-Utils'.
Need A database created with the command `mkid' above
`default-directory'.
Need id-utils as dependency which provide `mkid', `gid' etc..
See <https://www.gnu.org/software/idutils/>.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-id-utils" (quote ("helm-gid-")))) (autoload (quote helm-imenu) "helm-imenu" "Preconfigured `helm' for `imenu'.

(fn)" t nil) (autoload (quote helm-imenu-in-all-buffers) "helm-imenu" "Preconfigured `helm' for fetching imenu entries in all buffers with similar mode as current.
A mode is similar as current if it is the same, it is derived
i.e. `derived-mode-p' or it have an association in
`helm-imenu-all-buffer-assoc'.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-imenu" (quote ("helm-")))) (autoload (quote helm-info) "helm-info" "Preconfigured `helm' for searching Info files' indices.

With a prefix argument \\[universal-argument], set REFRESH to
non-nil.

Optional parameter REFRESH, when non-nil, re-evaluates
`helm-default-info-index-list'.  If the variable has been
customized, set it to its saved value.  If not, set it to its
standard value. See `custom-reevaluate-setting' for more.

REFRESH is useful when new Info files are installed.  If
`helm-default-info-index-list' has not been customized, the new
Info files are made available.

(fn &optional REFRESH)" t nil) (autoload (quote helm-info-at-point) "helm-info" "Preconfigured `helm' for searching info at point.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-info" (quote ("helm-")))) (autoload (quote helm-projects-find-files) "helm-locate" "Find files with locate in `helm-locate-project-list'.
With a prefix arg refresh the database in each project.

(fn UPDATE)" t nil) (autoload (quote helm-locate) "helm-locate" "Preconfigured `helm' for Locate.
Note: you can add locate options after entering pattern.
See 'man locate' for valid options and also `helm-locate-command'.

You can specify a local database with prefix argument ARG.
With two prefix arg, refresh the current local db or create it if
it doesn't exists.

To create a user specific db, use
\"updatedb -l 0 -o db_path -U directory\".
Where db_path is a filename matched by
`helm-locate-db-file-regexp'.

(fn ARG)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-locate" (quote ("helm-")))) (autoload (quote helm-man-woman) "helm-man" "Preconfigured `helm' for Man and Woman pages.
With a prefix arg reinitialize the cache.

(fn ARG)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-man" (quote ("helm-")))) (autoload (quote helm-world-time) "helm-misc" "Preconfigured `helm' to show world time.
Default action change TZ environment variable locally to emacs.

(fn)" t nil) (autoload (quote helm-insert-latex-math) "helm-misc" "Preconfigured helm for latex math symbols completion.

(fn)" t nil) (autoload (quote helm-ratpoison-commands) "helm-misc" "Preconfigured `helm' to execute ratpoison commands.

(fn)" t nil) (autoload (quote helm-stumpwm-commands) "helm-misc" "Preconfigured helm for stumpwm commands.

(fn)" t nil) (autoload (quote helm-minibuffer-history) "helm-misc" "Preconfigured `helm' for `minibuffer-history'.

(fn)" t nil) (defvar helm-epa-mode nil "Non-nil if Helm-Epa mode is enabled.
See the `helm-epa-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `helm-epa-mode'.") (custom-autoload (quote helm-epa-mode) "helm-misc" nil) (autoload (quote helm-epa-mode) "helm-misc" "Enable helm completion on gpg keys in epa functions.

(fn &optional ARG)" t nil) (autoload (quote helm-epa-list-keys) "helm-misc" "List all gpg keys.
This is the helm interface for `epa-list-keys'.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-misc" (quote ("helm-")))) (autoload (quote helm-comp-read) "helm-mode" "Read a string in the minibuffer, with helm completion.

It is helm `completing-read' equivalent.

- PROMPT is the prompt name to use.

- COLLECTION can be a list, vector, obarray or hash-table.
  It can be also a function that receives three arguments:
  the values string, predicate and t. See `all-completions' for more details.

Keys description:

- TEST: A predicate called with one arg i.e candidate.

- INITIAL-INPUT: Same as input arg in `helm'.

- PRESELECT: See preselect arg of `helm'.

- DEFAULT: This option is used only for compatibility with regular
  Emacs `completing-read' (Same as DEFAULT arg of `completing-read').

- BUFFER: Name of helm-buffer.

- MUST-MATCH: Candidate selected must be one of COLLECTION.

- FUZZY: Enable fuzzy matching.

- REVERSE-HISTORY: When non--nil display history source after current
  source completion.

- REQUIRES-PATTERN: Same as helm attribute, default is 0.

- HISTORY: A list containing specific history, default is nil.
  When it is non--nil, all elements of HISTORY are displayed in
  a special source before COLLECTION.

- INPUT-HISTORY: A symbol. The minibuffer input history will be
  stored there, if nil or not provided, `minibuffer-history'
  will be used instead.

- CASE-FOLD: Same as `helm-case-fold-search'.

- DEL-INPUT: Boolean, when non--nil (default) remove the partial
  minibuffer input from HISTORY is present.

- PERSISTENT-ACTION: A function called with one arg i.e candidate.

- PERSISTENT-HELP: A string to document PERSISTENT-ACTION.

- MODE-LINE: A string or list to display in mode line.
  Default is `helm-comp-read-mode-line'.

- KEYMAP: A keymap to use in this `helm-comp-read'.
  (the keymap will be shared with history source)

- NAME: The name related to this local source.

- HEADER-NAME: A function to alter NAME, see `helm'.

- EXEC-WHEN-ONLY-ONE: Bound `helm-execute-action-at-once-if-one'
  to non--nil. (possibles values are t or nil).

- VOLATILE: Use volatile attribute.

- SORT: A predicate to give to `sort' e.g `string-lessp'
  Use this only on small data as it is inefficient.
  If you want to sort faster add a sort function to
  FC-TRANSFORMER.
  Note that FUZZY when enabled is already providing a sort function.

- FC-TRANSFORMER: A `filtered-candidate-transformer' function
  or a list of functions.

- HIST-FC-TRANSFORMER: A `filtered-candidate-transformer'
  function for the history source.

- MARKED-CANDIDATES: If non--nil return candidate or marked candidates as a list.

- NOMARK: When non--nil don't allow marking candidates.

- ALISTP: (default is non--nil) See `helm-comp-read-get-candidates'.

- CANDIDATES-IN-BUFFER: when non--nil use a source build with
  `helm-source-in-buffer' which is much faster.
  Argument VOLATILE have no effect when CANDIDATES-IN-BUFFER is non--nil.

- MATCH-PART: Allow matching only one part of candidate.
  See match-part documentation in `helm-source'.

- MATCH-DYNAMIC: See match-dynamic in `helm-source-sync'
  It has no effect when used with CANDIDATES-IN-BUFFER.

- ALLOW-NEST: Allow nesting this `helm-comp-read' in a helm session.
  See `helm'.

- MULTILINE: See multiline in `helm-source'.

- COERCE: See coerce in `helm-source'.

- GROUP: See group in `helm-source'.

Any prefix args passed during `helm-comp-read' invocation will be recorded
in `helm-current-prefix-arg', otherwise if prefix args were given before
`helm-comp-read' invocation, the value of `current-prefix-arg' will be used.
That means you can pass prefix args before or after calling a command
that use `helm-comp-read'.  See `helm-M-x' for example.

(fn PROMPT COLLECTION &key TEST INITIAL-INPUT DEFAULT PRESELECT (BUFFER \"*Helm Completions*\") MUST-MATCH FUZZY REVERSE-HISTORY (REQUIRES-PATTERN 0) HISTORY INPUT-HISTORY (CASE-FOLD helm-comp-read-case-fold-search) (DEL-INPUT t) (PERSISTENT-ACTION nil) (PERSISTENT-HELP \"DoNothing\") (MODE-LINE helm-comp-read-mode-line) HELP-MESSAGE (KEYMAP helm-comp-read-map) (NAME \"Helm Completions\") HEADER-NAME CANDIDATES-IN-BUFFER MATCH-PART MATCH-DYNAMIC EXEC-WHEN-ONLY-ONE QUIT-WHEN-NO-CAND (VOLATILE t) SORT FC-TRANSFORMER HIST-FC-TRANSFORMER (MARKED-CANDIDATES helm-comp-read-use-marked) NOMARK (ALISTP t) (CANDIDATE-NUMBER-LIMIT helm-candidate-number-limit) MULTILINE ALLOW-NEST COERCE (GROUP \\='helm))" nil nil) (autoload (quote helm-read-file-name) "helm-mode" "Read a file name with helm completion.
It is helm `read-file-name' emulation.

Argument PROMPT is the default prompt to use.

Keys description:

- NAME: Source name, default to \"Read File Name\".

- INITIAL-INPUT: Where to start reading file name, default to `default-directory'.

- BUFFER: `helm-buffer' name, defaults to \"*Helm Completions*\".

- TEST: A predicate called with one arg 'candidate'.

- NORET: Allow disabling helm-ff-RET (have no effect if helm-ff-RET
                                      isn't bound to RET).

- CASE-FOLD: Same as `helm-case-fold-search'.

- PRESELECT: helm preselection.

- HISTORY: Display HISTORY in a special source.

- MUST-MATCH: Can be 'confirm, nil, or t.

- FUZZY: Enable fuzzy matching when non-nil (Enabled by default).

- MARKED-CANDIDATES: When non--nil return a list of marked candidates.

- NOMARK: When non--nil don't allow marking candidates.

- ALISTP: Don't use `all-completions' in history (take effect only on history).

- PERSISTENT-ACTION-IF: a persistent if action function.

- PERSISTENT-HELP: persistent help message.

- MODE-LINE: A mode line message, default is `helm-read-file-name-mode-line-string'.

(fn PROMPT &key (NAME \"Read File Name\") (INITIAL-INPUT default-directory) (BUFFER \"*Helm file completions*\") TEST NORET (CASE-FOLD helm-file-name-case-fold-search) PRESELECT HISTORY MUST-MATCH (FUZZY t) DEFAULT MARKED-CANDIDATES (CANDIDATE-NUMBER-LIMIT helm-ff-candidate-number-limit) NOMARK (ALISTP t) (PERSISTENT-ACTION-IF \\='helm-find-files-persistent-action-if) (PERSISTENT-HELP \"Hit1 Expand Candidate, Hit2 or (C-u) Find file\") (MODE-LINE helm-read-file-name-mode-line-string))" nil nil) (defvar helm-mode nil "Non-nil if Helm mode is enabled.
See the `helm-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `helm-mode'.") (custom-autoload (quote helm-mode) "helm-mode" nil) (autoload (quote helm-mode) "helm-mode" "Toggle generic helm completion.

All functions in Emacs that use `completing-read',
`read-file-name', `completion-in-region' and friends will use helm
interface when this mode is turned on.

However you can modify this behavior for functions of your choice
with `helm-completing-read-handlers-alist'.

Called with a positive arg, turn on unconditionally, with a
negative arg turn off.
You can toggle it with M-x `helm-mode'.

About `ido-mode':
DO NOT enable `ido-everywhere' when using `helm-mode'.  Instead of
using `ido-mode', add the commands where you want to use ido to
`helm-completing-read-handlers-alist' with `ido' as value.

Note: This mode is incompatible with Emacs23.

(fn &optional ARG)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-mode" (quote ("helm-")))) (autoload (quote helm-browse-url-firefox) "helm-net" "Same as `browse-url-firefox' but detach from Emacs.

So when you quit Emacs you can keep your Firefox session open and
not be prompted to kill the Firefox process.

NOTE: Probably not supported on some systems (e.g., Windows).

(fn URL &optional IGNORE)" t nil) (autoload (quote helm-browse-url-opera) "helm-net" "Browse URL with Opera browser and detach from Emacs.

So when you quit Emacs you can keep your Opera session open and
not be prompted to kill the Opera process.

NOTE: Probably not supported on some systems (e.g., Windows).

(fn URL &optional IGNORE)" t nil) (autoload (quote helm-browse-url-chromium) "helm-net" "Browse URL with Google Chrome browser.

(fn URL &optional IGNORE)" t nil) (autoload (quote helm-browse-url-uzbl) "helm-net" "Browse URL with uzbl browser.

(fn URL &optional IGNORE)" t nil) (autoload (quote helm-browse-url-conkeror) "helm-net" "Browse URL with conkeror browser.

(fn URL &optional IGNORE)" t nil) (autoload (quote helm-browse-url-next) "helm-net" "Browse URL with next browser.

(fn URL &optional IGNORE)" t nil) (autoload (quote helm-surfraw) "helm-net" "Preconfigured `helm' to search PATTERN with search ENGINE.

(fn PATTERN ENGINE)" t nil) (autoload (quote helm-google-suggest) "helm-net" "Preconfigured `helm' for Google search with Google suggest.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-net" (quote ("helm-")))) (autoload (quote helm-occur) "helm-occur" "Preconfigured helm for searching lines matching pattern in `current-buffer'.

When `helm-source-occur' is member of
`helm-sources-using-default-as-input' which is the default,
symbol at point is searched at startup.

When a region is marked search only in this region by narrowing.

To search in multiples buffers start from one of the commands listing
buffers (i.e. a helm command using `helm-source-buffers-list' like
`helm-mini') and use the multi occur buffers action.

This is the helm implementation that collect lines matching pattern
like vanilla Emacs `occur' but have nothing to do with it, the search
engine beeing completely different and also much faster.

(fn)" t nil) (autoload (quote helm-occur-visible-buffers) "helm-occur" "Run helm-occur on all visible buffers in frame.

(fn)" t nil) (autoload (quote helm-occur-from-isearch) "helm-occur" "Invoke `helm-occur' from isearch.

To use this bind it to a key in `isearch-mode-map'.

(fn)" t nil) (autoload (quote helm-multi-occur-from-isearch) "helm-occur" "Invoke `helm-multi-occur' from isearch.

With a prefix arg, reverse the behavior of
`helm-moccur-always-search-in-current'.
The prefix arg can be set before calling
`helm-multi-occur-from-isearch' or during the buffer selection.

To use this bind it to a key in `isearch-mode-map'.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-occur" (quote ("helm-")))) (autoload (quote helm-regexp) "helm-regexp" "Preconfigured helm to build regexps.
`query-replace-regexp' can be run from there against found regexp.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-regexp" (quote ("helm-")))) (autoload (quote helm-mark-ring) "helm-ring" "Preconfigured `helm' for `helm-source-mark-ring'.

(fn)" t nil) (autoload (quote helm-global-mark-ring) "helm-ring" "Preconfigured `helm' for `helm-source-global-mark-ring'.

(fn)" t nil) (autoload (quote helm-all-mark-rings) "helm-ring" "Preconfigured `helm' for `helm-source-global-mark-ring' and `helm-source-mark-ring'.

(fn)" t nil) (autoload (quote helm-register) "helm-ring" "Preconfigured `helm' for Emacs registers.

(fn)" t nil) (autoload (quote helm-show-kill-ring) "helm-ring" "Preconfigured `helm' for `kill-ring'.
It is drop-in replacement of `yank-pop'.

First call open the kill-ring browser, next calls move to next line.

(fn)" t nil) (autoload (quote helm-execute-kmacro) "helm-ring" "Preconfigured helm for keyboard macros.
Define your macros with `f3' and `f4'.
See (info \"(emacs) Keyboard Macros\") for detailed infos.
This command is useful when used with persistent action.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-ring" (quote ("helm-")))) (autoload (quote helm-semantic) "helm-semantic" "Preconfigured `helm' for `semantic'.
If ARG is supplied, pre-select symbol at point instead of current.

(fn ARG)" t nil) (autoload (quote helm-semantic-or-imenu) "helm-semantic" "Preconfigured helm for `semantic' or `imenu'.
If ARG is supplied, pre-select symbol at point instead of current
semantic tag in scope.

If `semantic-mode' is active in the current buffer, then use
semantic for generating tags, otherwise fall back to `imenu'.
Fill in the symbol at point by default.

(fn ARG)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-semantic" (quote ("helm-s")))) (defalias (quote helm-shell-prompts) (quote helm-comint-prompts)) (defalias (quote helm-shell-prompts-all) (quote helm-comint-prompts-all)) (defvar helm-top-poll-mode nil "Non-nil if Helm-Top-Poll mode is enabled.
See the `helm-top-poll-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `helm-top-poll-mode'.") (custom-autoload (quote helm-top-poll-mode) "helm-sys" nil) (autoload (quote helm-top-poll-mode) "helm-sys" "Refresh automatically helm top buffer once enabled.

(fn &optional ARG)" t nil) (autoload (quote helm-top) "helm-sys" "Preconfigured `helm' for top command.

(fn)" t nil) (autoload (quote helm-list-emacs-process) "helm-sys" "Preconfigured `helm' for Emacs process.

(fn)" t nil) (autoload (quote helm-xrandr-set) "helm-sys" "Preconfigured helm for xrandr.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-sys" (quote ("helm-")))) (autoload (quote helm-etags-select) "helm-tags" "Preconfigured helm for etags.
If called with a prefix argument REINIT
or if any of the tag files have been modified, reinitialize cache.

This function aggregates three sources of tag files:

  1) An automatically located file in the parent directories,
     by `helm-etags-get-tag-file'.
  2) `tags-file-name', which is commonly set by `find-tag' command.
  3) `tags-table-list' which is commonly set by `visit-tags-table' command.

(fn REINIT)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-tags" (quote ("helm-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-types" (quote ("helm-")))) (defvar helm-popup-tip-mode nil "Non-nil if Helm-Popup-Tip mode is enabled.
See the `helm-popup-tip-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `helm-popup-tip-mode'.") (custom-autoload (quote helm-popup-tip-mode) "helm-utils" nil) (autoload (quote helm-popup-tip-mode) "helm-utils" "Show help-echo informations in a popup tip at end of line.

(fn &optional ARG)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-utils" (quote ("helm-" "with-helm-display-marked-candidates")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-x-files" (quote ("helm-")))) (provide (quote helm-autoloads)))))

#s(hash-table size 65 test eq rehash-size 1.5 rehash-threshold 0.8125 data (org-elpa #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8125 data (version 1 "melpa" nil "gnu-elpa-mirror" nil "emacsmirror-mirror" nil "straight" nil "use-package" nil "bind-key" nil "org" (org :type git :repo "https://code.orgmode.org/bzg/org-mode.git" :local-repo "org") "org-bullets" nil "outorg" nil "outline" nil "outshine" nil "cl-lib" nil "navi-mode" nil "undo-tree" nil "tabbar" nil "easy-kill" nil "hydra" nil "lv" nil "ace-window" nil "avy" nil "markdown-mode" nil "rainbow-delimiters" nil "unicode-fonts" nil "font-utils" nil "persistent-soft" nil "pcache" nil "eieio" nil "list-utils" nil "ucs-utils" nil "telephone-line" nil "cl-generic" nil "seq" nil "recentf" nil "helm" nil "async" nil "popup" nil "helm-core" nil "mike-search" nil)) melpa #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8125 data (version 2 "gnu-elpa-mirror" nil "emacsmirror-mirror" nil "straight" nil "use-package" (use-package :type git :flavor melpa :files (:defaults (:exclude "bind-key.el" "bind-chord.el" "use-package-chords.el" "use-package-ensure-system-package.el") "use-package-pkg.el") :host github :repo "jwiegley/use-package") "bind-key" (bind-key :type git :flavor melpa :files ("bind-key.el" "bind-key-pkg.el") :host github :repo "jwiegley/use-package") "org-bullets" (org-bullets :type git :flavor melpa :host github :repo "integral-dw/org-bullets") "outorg" (outorg :type git :flavor melpa :host github :repo "alphapapa/outorg") "outline" nil "outshine" (outshine :type git :flavor melpa :host github :repo "alphapapa/outshine") "cl-lib" nil "navi-mode" (navi-mode :type git :flavor melpa :host github :repo "alphapapa/navi") "undo-tree" nil "tabbar" (tabbar :type git :flavor melpa :files ("tabbar.el" "*.png" "tabbar-pkg.el") :host github :repo "dholm/tabbar") "easy-kill" (easy-kill :type git :flavor melpa :host github :repo "leoliu/easy-kill") "hydra" (hydra :type git :flavor melpa :files (:defaults (:exclude "lv.el") "hydra-pkg.el") :host github :repo "abo-abo/hydra") "lv" (lv :type git :flavor melpa :files ("lv.el" "lv-pkg.el") :host github :repo "abo-abo/hydra") "ace-window" (ace-window :type git :flavor melpa :host github :repo "abo-abo/ace-window") "avy" (avy :type git :flavor melpa :host github :repo "abo-abo/avy") "markdown-mode" (markdown-mode :type git :flavor melpa :host github :repo "jrblevin/markdown-mode") "rainbow-delimiters" (rainbow-delimiters :type git :flavor melpa :host github :repo "Fanael/rainbow-delimiters") "unicode-fonts" (unicode-fonts :type git :flavor melpa :host github :repo "rolandwalker/unicode-fonts") "font-utils" (font-utils :type git :flavor melpa :host github :repo "rolandwalker/font-utils") "persistent-soft" (persistent-soft :type git :flavor melpa :host github :repo "rolandwalker/persistent-soft") "pcache" (pcache :type git :flavor melpa :host github :repo "sigma/pcache") "eieio" nil "list-utils" (list-utils :type git :flavor melpa :host github :repo "rolandwalker/list-utils") "ucs-utils" (ucs-utils :type git :flavor melpa :host github :repo "rolandwalker/ucs-utils") "telephone-line" (telephone-line :type git :flavor melpa :host github :repo "dbordak/telephone-line") "cl-generic" nil "seq" nil "recentf" nil "helm" (helm :type git :flavor melpa :files ("*.el" "emacs-helm.sh" (:exclude "helm.el" "helm-lib.el" "helm-source.el" "helm-multi-match.el" "helm-core-pkg.el") "helm-pkg.el") :host github :repo "emacs-helm/helm") "async" (async :type git :flavor melpa :host github :repo "jwiegley/emacs-async") "popup" (popup :type git :flavor melpa :files ("popup.el" "popup-pkg.el") :host github :repo "auto-complete/popup-el") "helm-core" (helm-core :type git :flavor melpa :files ("helm-core-pkg.el" "helm.el" "helm-lib.el" "helm-source.el" "helm-multi-match.el" "helm-core-pkg.el") :host github :repo "emacs-helm/helm") "mike-search" nil)) gnu-elpa-mirror #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8125 data (version 3 "emacsmirror-mirror" nil "straight" nil "outline" nil "cl-lib" nil "undo-tree" (undo-tree :type git :host github :repo "emacs-straight/undo-tree" :files ("*" (:exclude ".git"))) "eieio" nil "cl-generic" nil "seq" nil "recentf" nil "mike-search" nil)) emacsmirror-mirror #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8125 data (version 2 "straight" (straight :type git :host github :repo "emacsmirror/straight") "outline" nil "cl-lib" nil "eieio" nil "cl-generic" nil "seq" nil "recentf" nil "mike-search" nil))))

("org-elpa" "melpa" "gnu-elpa-mirror" "emacsmirror-mirror" "straight" "emacs" "use-package" "bind-key" "org" "org-bullets" "outorg" "outline" "outshine" "cl-lib" "navi-mode" "undo-tree" "tabbar" "easy-kill" "hydra" "lv" "ace-window" "avy" "markdown-mode" "rainbow-delimiters" "unicode-fonts" "font-utils" "persistent-soft" "pcache" "eieio" "list-utils" "ucs-utils" "telephone-line" "cl-generic" "seq" "recentf" "helm" "async" "popup" "helm-core" "mike-search")

nil
