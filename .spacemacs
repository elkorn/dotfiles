;; -*- mode: dotspacemacs -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration."
  (setq-default
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (ie. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     ;; --------------------------------------------------------
     ;; Example of useful layers you may want to use right away
     ;; Uncomment a layer name and press C-c C-c to install it
     ;; --------------------------------------------------------
     evil-commentary
     org
     ;; evil-org
     finance
     auto-completion
     better-defaults
     git
     github
     markdown
     syntax-checking
     elixir
     erlang
     haskell
     clojure
     html
     scala
     ;; docker
     ;; web-beautify
     ;; themes-megapack
     javascript
     typescript
     react
     missing-dependencies
     )
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '()
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'
   dotspacemacs-delete-orphan-packages t)
  (setq dotspacemacs-additional-packages '(editorconfig))
  )

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; Either `vim' or `emacs'. Evil is always enabled but if the variable
   ;; is `emacs' then the `holy-mode' is enabled at startup.
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progess in `*Messages*' buffer.
   dotspacemacs-verbose-loading nil

   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to a .PNG file.
   ;; If the value is nil then no banner is displayed.
   ;; dotspacemacs-startup-banner 'official
   dotspacemacs-startup-banner nil
   ;; t if you always want to see the changelog at startup
   dotspacemacs-always-show-changelog t
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects'."
   dotspacemacs-startup-lists '(projects recents bookmarks)
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(soft-charcoal)
   ;; If non nil the cursor color matches the state color.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   ;; dotspacemacs-default-font '("DejaVu Sans Mono"
   ;;                             :size 14
   dotspacemacs-default-font '("Monoid"
                               :size 15
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it.
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; The command key used for Evil commands (ex-commands) and
   ;; Emacs commands (M-x).
   ;; By default the command key is `:' so ex-commands are executed like in Vim
   ;; with `:' and Emacs commands are executed with `<leader> :'.
   dotspacemacs-command-key ":"
   ;; If non nil the paste micro-state is enabled. While enabled pressing `p`
   ;; several times cycle between the kill ring content.
   dotspacemacs-enable-paste-micro-state t
   ;; Guide-key delay in seconds. The Guide-key is the popup buffer listing
   ;; the commands bound to the current keystrokes.
   dotspacemacs-guide-key-delay 0.2
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil ;; to boost the loading time.
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up.
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX."
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'.
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'.
   dotspacemacs-inactive-transparency 90
   ;; If non nil unicode symbols are displayed in the mode line.
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters the
   ;; point when it reaches the top or bottom of the screen.
   dotspacemacs-smooth-scrolling t
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   dotspacemacs-smartparens-strict-mode nil
   ;; If non nil advises quit functions to keep server open when quitting.
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now.
   dotspacemacs-default-package-repository nil
   )
  ;; User initialization goes here
  (setq-default
   word-wrap t)
  )

(defun dotspacemacs/config ()
  "Configuration function.
 This function is called at the very end of Spacemacs initialization after
layers configuration."

  (defun iwb ()
    (web-beautify-js)
    (interactive)
    (indent-region (point-min) (point-max) nil)
    )

  (setq hindent-process-path "~/.local/bin/hindent")
  ;; (setq ghc-module-command "~/.local/bin/ghc-mod")
  ;; (setq hindent-style "johan-tibell")
  (global-linum-mode)
  (global-centered-cursor-mode)
  (turn-on-fci-mode)
  (linum-relative-toggle) 
  (evil-leader/set-key-for-mode 'js2-mode "nb" 'iwb)
  ;; orgmode
  (setq org-default-notes-file "~/org/notes.org")
  (global-set-key "\C-cl" 'org-store-link)
  (global-set-key "\C-ca" 'org-agenda)
  (global-set-key "\C-cc" 'org-capture)
  (global-set-key "\C-cb" 'org-iswitchb)

  (evil-leader/set-key-for-mode 'haskell-mode "nb" 'hindent-reformat-buffer)
  (org-agenda nil "a")
  )
;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ahs-case-fold-search nil)
 '(ahs-default-range (quote ahs-range-whole-buffer))
 '(ahs-idle-interval 0.25)
 '(ahs-idle-timer 0 t)
 '(ahs-inhibit-face-list nil)
 '(ccm-ignored-commands
   (quote
    (mouse-drag-region mouse-set-point widget-button-click scroll-bar-toolkit-scroll evil-mouse-drag-region)))
 '(ccm-recenter-at-end-of-file t)
 '(hindent-style "johan-tibell")
 '(mode-require-final-newline nil)
 '(org-agenda-files
   (quote
    ("~/org/todo.org" "/home/korneliusz/vimwiki/org/Application structure.org" "/home/korneliusz/vimwiki/org/Asynchronous processing.org" "/home/korneliusz/vimwiki/org/Craftsmanship.org" "/home/korneliusz/vimwiki/org/Deploying to Heroku from angular-fullstack.org" "/home/korneliusz/vimwiki/org/Distributed applications.org" "/home/korneliusz/vimwiki/org/Executors.org" "/home/korneliusz/vimwiki/org/ForkJoin.org" "/home/korneliusz/vimwiki/org/Functional Programming.org" "/home/korneliusz/vimwiki/org/Futures.org" "/home/korneliusz/vimwiki/org/Go.org" "/home/korneliusz/vimwiki/org/GoArchitecture.org" "/home/korneliusz/vimwiki/org/GoConcurrencyPatterns.org" "/home/korneliusz/vimwiki/org/GoPractices.org" "/home/korneliusz/vimwiki/org/HTML, DOM.org" "/home/korneliusz/vimwiki/org/HarvestAndYield.org" "/home/korneliusz/vimwiki/org/Haskell.org" "/home/korneliusz/vimwiki/org/Health.org" "/home/korneliusz/vimwiki/org/Inpsiration.org" "/home/korneliusz/vimwiki/org/Interview knowledge.org" "/home/korneliusz/vimwiki/org/JS libs.org" "/home/korneliusz/vimwiki/org/JS.org" "/home/korneliusz/vimwiki/org/JSONWebTokens.org" "/home/korneliusz/vimwiki/org/JVM.org" "/home/korneliusz/vimwiki/org/JavaScript.org" "/home/korneliusz/vimwiki/org/Kernelization.org" "/home/korneliusz/vimwiki/org/Libraries.org" "/home/korneliusz/vimwiki/org/Libs.org" "/home/korneliusz/vimwiki/org/Life.org" "/home/korneliusz/vimwiki/org/MSc.org" "/home/korneliusz/vimwiki/org/MVCFrameworks.org" "/home/korneliusz/vimwiki/org/Microservices.org" "/home/korneliusz/vimwiki/org/ModernRIAPrinciples.org" "/home/korneliusz/vimwiki/org/MonadicDesignPatternsForTheWeb.org" "/home/korneliusz/vimwiki/org/Music.org" "/home/korneliusz/vimwiki/org/NoSQL.org" "/home/korneliusz/vimwiki/org/Node.js.org" "/home/korneliusz/vimwiki/org/Optimistic vs pessimistic concurrency control.org" "/home/korneliusz/vimwiki/org/Optimization killers.org" "/home/korneliusz/vimwiki/org/P=NP.org" "/home/korneliusz/vimwiki/org/PWL.org" "/home/korneliusz/vimwiki/org/Parameter expansion.org" "/home/korneliusz/vimwiki/org/Parameterized algorightms.org" "/home/korneliusz/vimwiki/org/Performance.org" "/home/korneliusz/vimwiki/org/Persistence API.org" "/home/korneliusz/vimwiki/org/Play.org" "/home/korneliusz/vimwiki/org/Process-related files and tree.org" "/home/korneliusz/vimwiki/org/Profiling.org" "/home/korneliusz/vimwiki/org/Pulseaudio too silent.org" "/home/korneliusz/vimwiki/org/QualitySleep.org" "/home/korneliusz/vimwiki/org/ReactIsNotAsGoodAsItCouldBe.org" "/home/korneliusz/vimwiki/org/ReadingAcademicMaterials.org" "/home/korneliusz/vimwiki/org/Real-time.org" "/home/korneliusz/vimwiki/org/Redis.org" "/home/korneliusz/vimwiki/org/Replace text in files.org" "/home/korneliusz/vimwiki/org/Resources.org" "/home/korneliusz/vimwiki/org/Ruby.org" "/home/korneliusz/vimwiki/org/SOLID.org" "/home/korneliusz/vimwiki/org/Scala.org" "/home/korneliusz/vimwiki/org/ScalaTest.org" "/home/korneliusz/vimwiki/org/Scaling.org" "/home/korneliusz/vimwiki/org/Security.org" "/home/korneliusz/vimwiki/org/SelfDiscipline.org" "/home/korneliusz/vimwiki/org/Size of a directory.org" "/home/korneliusz/vimwiki/org/Substitution-related.org" "/home/korneliusz/vimwiki/org/TOCTTOU.org" "/home/korneliusz/vimwiki/org/Testing Tools.org" "/home/korneliusz/vimwiki/org/Topic.org" "/home/korneliusz/vimwiki/org/Traits.org" "/home/korneliusz/vimwiki/org/TupleSpaces.org" "/home/korneliusz/vimwiki/org/UNIX.org" "/home/korneliusz/vimwiki/org/UnderstandingDependencyInjection.org" "/home/korneliusz/vimwiki/org/UnixAsIDE.org" "/home/korneliusz/vimwiki/org/User management.org" "/home/korneliusz/vimwiki/org/Using tput.org" "/home/korneliusz/vimwiki/org/Vertex cover problem kernelization by S.Buss.org" "/home/korneliusz/vimwiki/org/Vertex cover problem.org" "/home/korneliusz/vimwiki/org/Web App Performance.org" "/home/korneliusz/vimwiki/org/Web.org" "/home/korneliusz/vimwiki/org/WellManagedAMDCodebase.org" "/home/korneliusz/vimwiki/org/devoxx.org" "/home/korneliusz/vimwiki/org/fp-in-js.org" "/home/korneliusz/vimwiki/org/fp.org" "/home/korneliusz/vimwiki/org/good-and-bad-days.org" "/home/korneliusz/vimwiki/org/ideas.org" "/home/korneliusz/vimwiki/org/lens.org" "/home/korneliusz/vimwiki/org/misc.org" "/home/korneliusz/vimwiki/org/ml.org" "/home/korneliusz/vimwiki/org/react.org")))
 '(package-selected-packages
   (quote
    (erlang clj-refactor cider-eval-sexp-fu cider align-cljlet tss ledger-mode flycheck-ledger magit-gitflow magit-gh-pulls gitignore-mode git-commit toc-org spray spacemacs-theme smartparens popwin org-repo-todo org-present org-pomodoro org-plus-contrib org-bullets markdown-mode js2-mode jade-mode htmlize helm haml-mode gnuplot flycheck evil-org diff-hl define-word evil-leader evil which-key quelpa package-build bind-key s dash editorconfig-core editorconfig-fnmatch bind-map shm hindent haskell-snippets ruby-end alchemist elixir-mode zonokai-theme zenburn-theme zen-and-art-theme yaml-mode wolfram-mode window-numbering web-mode web-beautify volatile-highlights vi-tilde-fringe use-package underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme tronesque-theme toxi-theme tao-theme tangotango-theme tango-plus-theme tango-2-theme tagedit sunny-day-theme sublime-themes subatomic256-theme subatomic-theme stekene-theme spacegray-theme soothe-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme smooth-scrolling smeargle slim-mode seti-theme scss-mode scad-mode sass-mode rfringe reverse-theme rainbow-delimiters qml-mode purple-haze-theme psci professional-theme powerline planet-theme phoenix-dark-pink-theme phoenix-dark-mono-theme pcre2el pastels-on-dark-theme paradox page-break-lines organic-green-theme open-junk-file oldlace-theme occidental-theme obsidian-theme noflet noctilux-theme nix-mode nim-mode niflheim-theme neotree naquadah-theme mustang-theme move-text monochrome-theme molokai-theme moe-theme mmm-mode minimal-theme matlab-mode material-theme markdown-toc magit lush-theme linum-relative light-soap-theme leuven-theme less-css-mode julia-mode json-mode js2-refactor js-doc jazz-theme ir-black-theme inkpot-theme info+ indent-guide idris-mode ido-vertical-mode hydra hungry-delete hl-anything highlight-parentheses highlight-numbers highlight-indentation heroku-theme hemisu-theme helm-themes helm-swoop helm-projectile helm-mode-manager helm-make helm-gitignore helm-flyspell helm-descbinds helm-css-scss helm-c-yasnippet helm-ag hc-zenburn-theme guide-key-tip gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme google-translate golden-ratio go-eldoc github-browse-file gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link gist gh-md gandalf-theme fringe-helper flycheck-pos-tip flycheck-haskell flx-ido flatui-theme flatland-theme firebelly-theme fill-column-indicator fancy-battery expand-region exec-path-from-shell evil-visualstar evil-tutor evil-terminal-cursor-changer evil-surround evil-search-highlight-persist evil-numbers evil-matchit evil-lisp-state evil-jumper evil-indent-textobject evil-iedit-state evil-exchange evil-escape evil-commentary evil-args evil-anzu eval-sexp-fu espresso-theme ensime emmet-mode editorconfig django-theme darktooth-theme darkmine-theme darkburn-theme dakrone-theme cyberpunk-theme company-web company-tern company-statistics company-quickhelp company-go company-ghc company-cabal colorsarenice-theme color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized coffee-mode cmm-mode clues-theme clean-aindent-mode cherry-blossom-theme busybee-theme buffer-move bubbleberry-theme birds-of-paradise-plus-theme auto-yasnippet auto-highlight-symbol auto-dictionary arduino-mode apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes aggressive-indent afternoon-theme adaptive-wrap ace-window ace-link ace-jump-mode ac-ispell)))
 '(require-final-newline nil)
 '(ring-bell-function (quote ignore)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background "#191919" :foreground "#c2c2c2"))))
 '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil)))))
