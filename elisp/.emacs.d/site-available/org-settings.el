;; org mode settings
;; (require 'org-install)
;; (require 'org-publish)
(setq org-agenda-files 
      (directory-files "~/.org" t ".*\.org$"))
(setq org-log-done 'time)
(setq org-log-done 'note)
(setq org-publish-project-alist
      '(("note-org"
         :base-directory "~/.org"
         :publishing-directory "~/Sites/note"
         :base-extension "org"
         :headline-levels 2
         :recursive t
         :publishing-function org-publish-org-to-html
		 :auto-sitemap t
		 :sitemap-filename "index.org"
         :sitemap-filename "My NOTE"
		 :makeindex t
         :org-tags-exclude-from-inheritance t
         :link-home "index.html"
         :section-numbers nil
         :style "<link rel=\"stylesheet\"
    href=\"static/stylesheet/org.css\"
    type=\"text/css\"/>")
        ("note-static"
         :base-directory "~/.org/static"
         :publishing-directory "~/Sites/note/static"
         :recursive t
         :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|swf\\|7z\\|zip\\|gz\\|txt\\|el"
         :publishing-function org-publish-attachment)
        ("note" 
         :components ("note-org" "note-static")
         :author "March Liu"
         :email "march.liu@gmail.com"
         )))

(setq org-todo-keywords
      '((sequence  "TODO" "DOING" "|" "DONE" "|" "CANCELED")
        (sequence "REPORT" "BUG" "KNOWNCAUSE" "|" "FIXED")
        (sequence "MILLY" "JAMES" "|" "CANCELED")))

(defun org-summary-todo (n-done n-not-done)
  "Swith entry to DONE when all subentries are done, to TODO otherwise."
  (let (org-log-done org-log-states)   ; turn off logging.
    (org-todo (if (= n-not-done 0) "DONE" "TODO"))))
