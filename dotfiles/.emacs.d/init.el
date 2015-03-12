; Use the package manager
(require 'package)

; Sets package management sources
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives 
               '("gnu" . "http://elpa.gnu.org/packages/")))

; Initialize the package manager
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defconst user-init-dir
  (cond ((boundp 'user-emacs-directory)
         user-emacs-directory)
        ((boundp 'user-init-directory)
         user-init-directory)
        (t "~/.emacs.d/")))


(defun load-user-file (file)
  (interactive "f")
  "Load a file in current user's configuration directory"
  (load-file (expand-file-name file user-init-dir)))

; Load configuration modules
(load-user-file "appearance.el")
(load-user-file "evil-leader.el")
(load-user-file "evil.el")
(load-user-file "projectile.el")
;; (load-user-file "icicles.el")
(load-user-file "smex.el")
(load-user-file "keybindings-global.el")
(load-user-file "keybindings-scala.el")
(load-user-file "dirtree.el")
(load-user-file "ido.el")
(load-user-file "company.el")
(load-user-file "ensime.el")
(load-user-file "javascript.el")
(load-user-file "editorconfig.el")
(load-user-file "paredit.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (ujelly)))
 '(custom-safe-themes
   (quote
    ("0f6e58d1814b4138c5a88241f96547d35883cbb3df6cf9ec8ef44856ece04c13" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
