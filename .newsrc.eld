;; -*- mode:emacs-lisp; coding: utf-8-emacs; -*-
;; Gnus startup file.
;; Never delete this file -- if you want to force Gnus to read the
;; .newsrc file (if you have one), touch .newsrc instead.
(setq gnus-newsrc-file-version "Gnus v5.13")

(setq gnus-newsrc-last-checked-date '"Wed, 11 Oct 2017 14:51:56 +0200")

(setq gnus-newsrc-alist '(("nntp+news.gwene.org:gmane.linux.arch.announce" 3 ((1 . 331)) ((unexist) (seen (322 . 331))) "nntp:news.gwene.org") ("nntp+news.gwene.org:gwene.com.haskellcast" 3 ((10 . 14)) ((unexist) (seen (1 . 14))) "nntp:news.gwene.org") ("nntp+news.gwene.org:gwene.com.haskellforall" 3 (1) ((unexist) (seen (1 . 110))) "nntp:news.gwene.org") ("nntp+news.gwene.org:gwene.com.yc-frontpage.news" 3 ((1 . 151135) 151243) ((unexist) (seen (151124 . 151686))) "nntp:news.gwene.org") ("nntp+news.gwene.org:gwene.rs.lobste" 3 ((1 . 25559) (25564 . 25565)) ((unexist) (seen (25360 . 25610))) "nntp:news.gwene.org") ("nntp+news.gwene.org:gwene.com.echojs" 3 ((1 . 7203)) ((unexist) (seen (7194 . 7203))) "nntp:news.gwene.org") ("nndraft:drafts" 1 nil nil (nndraft "") ((gnus-dummy (gnus-draft-mode))))))

(setq gnus-server-alist '(("archive" nnfolder "archive" (nnfolder-directory "~/Mail/archive") (nnfolder-active-file "~/Mail/archive/active") (nnfolder-get-new-mail nil) (nnfolder-inhibit-expiry t))))

(setq gnus-zombie-list '("nntp+news.gwene.org:gwene.com.reddit.r.groovy" "nntp+news.gwene.org:gwene.com.reddit.r.todayilearned" "nntp+news.gwene.org:gwene.com.reddit.r.garmin" "nntp+news.gwene.org:gwene.com.reddit.r.java" "nntp+news.gwene.org:gwene.com.explore-style" "nntp+news.gwene.org:gwene.com.quillette" "nntp+news.gwene.org:gwene.com.youtube.dmitry-puchkov.razvedopros.oleg-sokolov" "nntp+news.gwene.org:gwene.org.hnrss.newest.points"))
