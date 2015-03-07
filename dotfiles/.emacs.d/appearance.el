(set-face-attribute 'default nil :height 160)
; Don't display the ugly startup message (particularly ugly in the GUI)
(setq inhibit-startup-message t)

; No toolbar
(tool-bar-mode -1)
(global-relative-line-numbers-mode)
(global-hl-line-mode)
(column-highlight-mode)

; Get rid of the butt ugly OSX scrollbars in GUI
(when (display-graphic-p) (set-scroll-bar-mode nil))