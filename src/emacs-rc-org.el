;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Org-Mode Setting
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;(add-to-list 'load-path (cons "/home/simon/.emacs.d/org-7.7/lisp" load-path))
;(setq load-path (cons "/home/simon/.emacs.d/org-7.7/contrib/lisp" load-path))

(add-to-list 'load-path "/home/simon/.emacs.d/org-7.7/lisp")
(add-to-list 'load-path "/home/simon/.emacs.d/org-7.7/contrib/lisp")

(require 'org-install)

;;;(setq org-agenda-files (quote ("c:/workspace/apps/mygit/orgs/")))

(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(global-set-key "\C-ca" 'org-agenda)
(add-hook 'org-mode-hook 'turn-on-auto-fill)

;;; Publcc project setting
;;; experimenting with docbook exports - not finished
(setq org-export-docbook-xsl-fo-proc-command "fop %s %s")
(setq org-export-docbook-xslt-proc-command "xsltproc --output %s /usr/share/xml/docbook/stylesheet/nwalsh/fo/docbook.xsl %s")
;;; Inline images in HTML instead of producting links to the image
(setq org-export-html-inline-images t)
                                        ; Do not use sub or superscripts - I currently don't need this functionality in my documents
(setq org-export-with-sub-superscripts nil)

;(setq org-export-html-style-extra "<link rel=\"stylesheet\" href=\"www./org.css\" type=\"text/css\" />")
(setq org-export-html-style-include-default nil)
                                        ; Do not generate internal css formatting for HTML exports
(setq org-export-htmlize-output-type (quote css))
                                        ; Export with LaTeX fragments
(setq org-export-with-LaTeX-fragments t)

(setq org-publish-project-alist
      '(("org-doc-base"
         :base-directory "~/.emacs.d/org-doc/"
                                        ;:publishing-directory "/ssh:www-data@www:~/www.norang.ca/htdocs/tmp"
         :publishing-directory "~/.emacs.d/org-doc-public"
         :recursive nil
         :base-extension "org"
         :html-preamble t
         :email-info t
         :table-of-contents nil
         :link-home "index.html"
         :infojs-opt "toc:t ltoc:t mouse:underline  path:http://orgmode.org/org-info.js"
         :publishing-function org-publish-org-to-html
         :publishing-function (org-publish-org-to-html org-publish-org-to-org)
         :style-include-default nil
         :style "<link rel=\"stylesheet\" href=\"org.css\" type=\"text/css\"/>"
         :auto-sitemap t
         :sitemap-filename "index.html"
         :sitemap-title "Haisheng Docs"
         :sitemap-style "tree"
         )
        ("org-doc-extra"
         :base-directory "~/.emacs.d/org-doc/"
                                        ;:publishing-directory "/ssh:www-data@www:~/www.norang.ca/htdocs/tmp"
         :publishing-directory "~/.emacs.d/org-doc-public"
         :base-extension "css\\|pdf\\|png\\|jpg\\|gif"
         :publishing-function org-publish-attachment
         :recursive nil
         :author nil)
        ("org-doc"
         :components ("org-doc-base" "org-doc-extra"))
        ))

(setq org-ditaa-jar-path "/home/simon/.emacs.d/org-7.7/contrib/scripts/ditaa.jar")
(setq org-plantuml-jar-path "/home/simon/.emacs.d/org-7.7/plantuml.jar")
  
(add-hook 'org-babel-after-execute-hook 'org-display-inline-images 'append)
  
(org-babel-do-load-languages
 (quote org-babel-load-languages)
 (quote ((emacs-lisp . t)
         (dot . t)
         (ditaa . t)
         (R . t)
         (python . t)
         (ruby . t)
         (gnuplot . t)
         (clojure . t)
         (sh . t)
         (ledger . t)
         (org . t)
         (plantuml . t)
         (latex . t))))

  ; Do not prompt to confirm evaluation
  ; This may be dangerous - make sure you understand the consequences
  ; of setting this -- see the docstring for details
(setq org-confirm-babel-evaluate nil)
  
  ; Use fundamental mode when editing plantuml blocks with C-c '
(add-to-list 'org-src-lang-modes (quote ("plantuml" . fundamental)))
