;; -----------------------------------------------------------------------------
;; Copyright (c) 2020 xiashuangxi<xiashuangxi@hotmail.com>
;; 
;; Permission is hereby granted, free of charge, to any person obtaining a copy
;; of this software and associated documentation files (the "Software"), to deal
;; in the Software without restriction, including without limitation the rights
;; to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
;; copies of the Software, and to permit persons to whom the Software is
;; furnished to do so, subject to the following conditions:
;; 
;; The above copyright notice and this permission notice shall be included in all
;; copies or substantial portions of the Software.
;; 
;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
;; IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
;; FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
;; AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
;; LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
;; OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
;; SOFTWARE.
;;
;; update:
;;      2020/09/26 xiashuangxi@hotmail.com
;; -----------------------------------------------------------------------------

(require 'core-funs)
(logPrint "加载 core-custom")
;; (defgroup centaur nil
;;     :group 'convenience
;;     :link '(url-link :tag "主页" "https://github.com/xiashuangxi"))

;; (defgroup centaur-logo (expand-file-name "logo.png" use-emacs-directory)
;;     :group 'centaur
;;     :type 'string)

;; (defgroup centaur-full-name "Xia Shuangxi"
;;     :group 'centaur
;;     :type 'string)

;; (defgroup centaur-email "xiashuangxi@hotmail.com"
;;     :github 'centaur
;;     :type 'string)

;;; dashboard
;;; ----------------------------------------------------------------------------
;; (define-derived-mode taotie-mode special-mode "Taotie"
;;   "Dashboard major mode for startup screen.
;; \\<dashboard-mode-map>
;; "
;;   :group 'taotie
;;   :syntax-table nil
;;   :abbrev-table nil
;;   (buffer-disable-undo)
;;   (whitespace-mode -1)
;;   (linum-mode -1)
;;   (when (>= emacs-major-version 26)
;;     (display-line-numbers-mode -1))
;;   (page-break-lines-mode 1)
;;   (setq inhibit-startup-screen t)
;;   (setq buffer-read-only t
;;         truncate-lines t))

;; (defgroup taotie nil
;;   "Extensible startup screen."
;;   :group 'applications)

;; (defcustom taotie-image-banner-max-height 0
;;     "taotie-iamge-banner-max-height"
;;     :type 'integer
;;     :group 'taotie)

;; (defcustom taotie-image-banner-max-width 0
;;     "taotie-image-banner-max-width"
;;     :type 'integer
;;     :group 'taotie)

;; (defconst taotie-banners-directory
;;     (concat (file-name-directory 
;;             (locate-library "core-custom"))
;;             "/banners/"))

;; (defconst taotie-banner-logo-png
;;   (expand-file-name (concat taotie-banners-directory "logo.png"))
;;   "Emacs banner image.")

;; (defconst taotie-banner-length 75)

;; (defcustom taotie-banner-logo-title "欢迎来到 Emacs！"
;;     "taotie-banner-logo-title"
;;     :type 'string
;;     :group 'taotie)

;; (defface taotie-banner-logo-title
;;     '((t :inherit default))
;;     "banner title"
;;     :group 'taotie)


;; (defun taotie-center-line (string)
;;   (insert (make-string (max 0 (floor (/ (- taotie-banner-length
;;                                            (+ (length string) 1)) 2))) ?\ )))

;; (defun taotie-insert-image-banner (banner)
;;     (when (file-exists-p banner)
;;         (let* ((title taotie-banner-logo-title)
;;                 (spec 
;;                     (if (image-type-available-p 'imagemagick)
;;                         (apply 'create-image banner 'imagemagick nil
;;                             (append (when (> taotie-image-banner-max-width 0)
;;                                         (list :max-width taotie-image-banner-max-width))
;;                                     (when (> taotie-image-banner-max-height 0)
;;                                         (list :max-height taotie-image-banner-max-height))))
;;                     (create-image banner)))
;;                 (size (image-size spec))
;;                 (width (car size))
;;                 (left-margin (max 0 (floor (- taotie-banner-length width) 2))))
;;             (message "[taotie-mode] %s" spec)
;;             (goto-char (point-min))
;;             (insert "\n")
;;             (insert (make-string left-margin ?\ ))
;;             (insert-image spec)
;;             (insert "\n\n")
;;             (when title
;;                 (taotie-center-line title)
;;                 (insert (format "%s\n\n" (propertize title 'face 'taotie-banner-logo-title)))))))

;; ;; (defun taotie-insert-image-banner (banner)
;; ;;   "Display an image BANNER."
;; ;;   (when (file-exists-p banner)
;; ;;     (let* ((title taotie-banner-logo-title)
;; ;;            (spec
;; ;;             (if (image-type-available-p 'imagemagick)
;; ;;                 (apply 'create-image banner 'imagemagick nil
;; ;;                        (append (when (> taotie-image-banner-max-width 0)
;; ;;                                  (list :max-width taotie-image-banner-max-width))
;; ;;                                (when (> taotie-image-banner-max-height 0)
;; ;;                                  (list :max-height taotie-image-banner-max-height))))
;; ;;               (create-image banner)))
;; ;;            (size (image-size spec))
;; ;;            (width (car size))
;; ;;            (left-margin (max 0 (floor (- taotie-banner-length width) 2))))
;; ;;       (goto-char (point-min))
;; ;;       (insert "\n")
;; ;;       (insert (make-string left-margin ?\ ))
;; ;;       (insert-image spec)
;; ;;       (insert "\n\n")
;; ;;       (when title
;; ;;         ;; (taotie-center-line title)
;; ;;         (insert (format "%s\n\n" (propertize title 'face 'taotie-banner-logo-title)))))))



;; (taotie-insert-image-banner taotie-banner-logo-png)

;; (defconst taotie-banners-directory
;;     (concat (file-name-directory 
;;             (locate-library "core-custom"))
;;             "/banners/"))

;; (defconst taotie-banner-logo-png
;;   (expand-file-name (concat taotie-banners-directory "logo.org"))
;;   "Emacs banner image.")
;; (message taotie-banner-logo-png )
;; (with-eval-after-load 'org
;;     (message "load org ======================")
;;   (setq org-display-inline-images t)
;;   (setq org-redisplay-inline-images t)
;;   (setq org-startup-with-inline-images "inlineimages")
;;   (setq org-hide-emphasis-markers t)
;;   (setq org-confirm-elisp-link-function nil)
;;   (setq org-link-frame-setup '((file . find-file)))
;;   )
;; (setq org-link-frame-setup '((file . taotie-banner-logo-png)))
;; (setq custom-unlispify-remove-prefixes t)



;; (defcustom org-link-frame-setup
;;   '((vm . vm-visit-folder-other-frame)
;;     (vm-imap . vm-visit-imap-folder-other-frame)
;;     (gnus . org-gnus-no-new-news)
;;     (file . find-file-other-window)
;;     (wl . wl-other-frame))
;;   "Setup the frame configuration for following links.
;; When following a link with Emacs, it may often be useful to display
;; this link in another window or frame.  This variable can be used to
;; set this up for the different types of links.
;; For VM, use any of
;;     `vm-visit-folder'
;;     `vm-visit-folder-other-window'
;;     `vm-visit-folder-other-frame'
;; For Gnus, use any of
;;     `gnus'
;;     `gnus-other-frame'
;;     `org-gnus-no-new-news'
;; For FILE, use any of
;;     `find-file'
;;     `find-file-other-window'
;;     `find-file-other-frame'
;; For Wanderlust use any of
;;     `wl'
;;     `wl-other-frame'
;; For the calendar, use the variable `calendar-setup'.
;; For BBDB, it is currently only possible to display the matches in
;; another window."
;;   :group 'org-link-follow
;;   :type '(list
;; 	  (cons (const vm)
;; 		(choice
;; 		 (const vm-visit-folder)
;; 		 (const vm-visit-folder-other-window)
;; 		 (const vm-visit-folder-other-frame)))
;; 	  (cons (const vm-imap)
;; 		(choice
;; 		 (const vm-visit-imap-folder)
;; 		 (const vm-visit-imap-folder-other-window)
;; 		 (const vm-visit-imap-folder-other-frame)))
;; 	  (cons (const gnus)
;; 		(choice
;; 		 (const gnus)
;; 		 (const gnus-other-frame)
;; 		 (const org-gnus-no-new-news)))
;; 	  (cons (const file)
;; 		(choice
;; 		 (const find-file)
;; 		 (const find-file-other-window)
;; 		 (const find-file-other-frame)))
;; 	  (cons (const wl)
;; 		(choice
;; 		 (const wl)
;; 		 (const wl-other-frame))))
;;   :safe nil)

;; (defun info (&optional file-or-node buffer)
;;   (interactive (list
;;                 (if (and current-prefix-arg (not (numberp current-prefix-arg)))
;;                     (read-file-name "Info file name: " nil nil t))
;;                 (if (numberp current-prefix-arg)
;;                     (format "*info*<%s>" current-prefix-arg))))
;;   (info-setup file-or-node
;;           (pop-to-buffer-same-window (or buffer "*info*"))))

;;; ----------------------------------------------------------------------------

;; (use-package greymatters)
;; (load-theme 'greymatters)

;;  (deftheme greymatters)
;;  (let ((class '((class color) (min-colors 89)))
;;        (fg1 "#2f2f2f")
;;        (fg2 "#3d3d3d")
;;        (fg3 "#4c4c4c")
;;        (fg4 "#5b5b5b")
;;        (bg1 "#f9fbfd")
;;        (bg2 "#e3e4e6")
;;        (bg3 "#cdced0")
;;        (bg4 "#b7b8ba")
;;        (key2 "#546789")
;;        (key3 "#394d6d")
;;        (builtin "#7b4135")
;;        (keyword "#3f567b")
;;        (const   "#64502f")
;;        (comment "#949494")
;;        (func    "#714355")
;;        (str     "#305f5e")
;;        (type    "#634575")
;;        (var     "#3f5b32")
;;        (warning "#fa0c0c"))
;;    (custom-theme-set-faces
;;    'greymatters
;;         `(default ((,class (:background ,bg1 :foreground ,fg1))))
;;         `(font-lock-builtin-face ((,class (:foreground ,builtin))))
;;         `(font-lock-comment-face ((,class (:foreground ,comment))))
;; 	`(font-lock-negation-char-face ((,class (:foreground ,const))))
;; 	`(font-lock-reference-face ((,class (:foreground ,const))))
;; 	`(font-lock-constant-face ((,class (:foreground ,const))))
;;         `(font-lock-doc-face ((,class (:foreground ,comment))))
;;         `(font-lock-function-name-face ((,class (:foreground ,func :bold t))))
;;         `(font-lock-keyword-face ((,class (:bold ,class :foreground ,keyword))))
;;         `(font-lock-string-face ((,class (:foreground ,str))))
;;         `(font-lock-type-face ((,class (:foreground ,type ))))
;;         `(font-lock-variable-name-face ((,class (:foreground ,var))))
;;         `(font-lock-warning-face ((,class (:foreground ,warning :background ,bg2))))
;;         `(region ((,class (:background ,fg1 :foreground ,bg1))))
;;         `(highlight ((,class (:foreground ,fg3 :background ,bg3))))
;; 	`(hl-line ((,class (:background  ,bg2))))
;; 	`(fringe ((,class (:background ,bg2 :foreground ,fg4))))
;; 	`(cursor ((,class (:background ,bg3))))
;;         `(show-paren-match-face ((,class (:background ,warning))))
;;         `(isearch ((,class (:bold t :foreground ,warning :background ,bg3))))
;;         `(mode-line ((,class (:box (:line-width 1 :color nil) :bold t :foreground ,fg4 :background ,bg2))))
;;         `(mode-line-inactive ((,class (:box (:line-width 1 :color nil :style pressed-button) :foreground ,key3 :background ,bg1 :weight normal))))
;;         `(mode-line-buffer-id ((,class (:bold t :foreground ,func :background nil))))
;; 	`(mode-line-highlight ((,class (:foreground ,keyword :box nil :weight bold))))
;;         `(mode-line-emphasis ((,class (:foreground ,fg1))))
;; 	`(vertical-border ((,class (:foreground ,fg3))))
;;         `(minibuffer-prompt ((,class (:bold t :foreground ,keyword))))
;;         `(default-italic ((,class (:italic t))))
;; 	`(link ((,class (:foreground ,const :underline t))))
;; 	`(org-code ((,class (:foreground ,fg2))))
;; 	`(org-hide ((,class (:foreground ,fg4))))
;;         `(org-level-1 ((,class (:bold t :foreground ,fg2 :height 1.1))))
;;         `(org-level-2 ((,class (:bold nil :foreground ,fg3))))
;;         `(org-level-3 ((,class (:bold t :foreground ,fg4))))
;;         `(org-level-4 ((,class (:bold nil :foreground ,bg4))))
;;         `(org-date ((,class (:underline t :foreground ,var) )))
;;         `(org-footnote  ((,class (:underline t :foreground ,fg4))))
;;         `(org-link ((,class (:underline t :foreground ,type ))))
;;         `(org-special-keyword ((,class (:foreground ,func))))
;;         `(org-block ((,class (:foreground ,fg3))))
;;         `(org-quote ((,class (:inherit org-block :slant italic))))
;;         `(org-verse ((,class (:inherit org-block :slant italic))))
;;         `(org-todo ((,class (:box (:line-width 1 :color ,fg3) :foreground ,keyword :bold t))))
;;         `(org-done ((,class (:box (:line-width 1 :color ,bg3) :bold t :foreground ,bg4))))
;;         `(org-warning ((,class (:underline t :foreground ,warning))))
;;         `(org-agenda-structure ((,class (:weight bold :foreground ,fg3 :box (:color ,fg4) :background ,bg3))))
;;         `(org-agenda-date ((,class (:foreground ,var :height 1.1 ))))
;;         `(org-agenda-date-weekend ((,class (:weight normal :foreground ,fg4))))
;;         `(org-agenda-date-today ((,class (:weight bold :foreground ,keyword :height 1.4))))
;; 	`(org-scheduled ((,class (:foreground ,str ))))
;;         `(org-scheduled-today ((,class (:foreground ,func :height 1.2))))
;;         `(org-agenda-done ((,class (:foreground ,bg4))))
;; 	`(org-ellipsis ((,class (:foreground ,builtin))))
;; 	`(org-verbatim ((,class (:foreground ,fg4))))
;;         `(org-document-info-keyword ((,class (:foreground ,func))))
;; 	`(font-latex-bold-face ((,class (:foreground ,type))))
;; 	`(font-latex-italic-face ((,class (:foreground ,key3 :italic t))))
;; 	`(font-latex-string-face ((,class (:foreground ,str))))
;; 	`(font-latex-match-reference-keywords ((,class (:foreground ,const))))
;; 	`(font-latex-match-variable-keywords ((,class (:foreground ,var))))
;; 	`(ido-only-match ((,class (:foreground ,warning))))
;; 	`(org-sexp-date ((,class (:foreground ,fg4))))
;; 	`(ido-first-match ((,class (:foreground ,keyword :bold t))))
;; 	`(gnus-header-content ((,class (:foreground ,keyword))))
;; 	`(gnus-header-from ((,class (:foreground ,var))))
;; 	`(gnus-header-name ((,class (:foreground ,type))))
;; 	`(gnus-header-subject ((,class (:foreground ,func :bold t))))
;; 	`(mu4e-view-url-number-face ((,class (:foreground ,type))))
;; 	`(mu4e-cited-1-face ((,class (:foreground ,fg2))))
;; 	`(mu4e-cited-7-face ((,class (:foreground ,fg3))))
;; 	`(mu4e-header-marks-face ((,class (:foreground ,type))))
;; 	`(ffap ((,class (:foreground ,fg4))))
;; 	`(js2-private-function-call ((,class (:foreground ,const))))
;; 	`(js2-jsdoc-html-tag-delimiter ((,class (:foreground ,str))))
;; 	`(js2-jsdoc-html-tag-name ((,class (:foreground ,key2))))
;; 	`(js2-external-variable ((,class (:foreground ,type  ))))
;;         `(js2-function-param ((,class (:foreground ,const))))
;;         `(js2-jsdoc-value ((,class (:foreground ,str))))
;;         `(js2-private-member ((,class (:foreground ,fg3))))
;;         `(js3-warning-face ((,class (:underline ,keyword))))
;;         `(js3-error-face ((,class (:underline ,warning))))
;;         `(js3-external-variable-face ((,class (:foreground ,var))))
;;         `(js3-function-param-face ((,class (:foreground ,key3))))
;;         `(js3-jsdoc-tag-face ((,class (:foreground ,keyword))))
;;         `(js3-instance-member-face ((,class (:foreground ,const))))
;; 	`(warning ((,class (:foreground ,warning)))) 
;; 	`(ac-completion-face ((,class (:underline t :foreground ,keyword))))
;; 	`(info-quoted-name ((,class (:foreground ,builtin))))
;; 	`(info-string ((,class (:foreground ,str))))
;; 	`(icompletep-determined ((,class :foreground ,builtin)))
;;         `(undo-tree-visualizer-current-face ((,class :foreground ,builtin)))
;;         `(undo-tree-visualizer-default-face ((,class :foreground ,fg2)))
;;         `(undo-tree-visualizer-unmodified-face ((,class :foreground ,var)))
;;         `(undo-tree-visualizer-register-face ((,class :foreground ,type)))
;; 	`(slime-repl-inputed-output-face ((,class (:foreground ,type))))
;;         `(trailing-whitespace ((,class :foreground nil :background ,warning)))
;;         `(rainbow-delimiters-depth-1-face ((,class :foreground ,fg1)))
;;         `(rainbow-delimiters-depth-2-face ((,class :foreground ,type)))
;;         `(rainbow-delimiters-depth-3-face ((,class :foreground ,var)))
;;         `(rainbow-delimiters-depth-4-face ((,class :foreground ,const)))
;;         `(rainbow-delimiters-depth-5-face ((,class :foreground ,keyword)))
;;         `(rainbow-delimiters-depth-6-face ((,class :foreground ,fg1)))
;;         `(rainbow-delimiters-depth-7-face ((,class :foreground ,type)))
;;         `(rainbow-delimiters-depth-8-face ((,class :foreground ,var)))
;;         `(magit-item-highlight ((,class :background ,bg3)))
;;         `(magit-section-heading        ((,class (:foreground ,keyword :weight bold))))
;;         `(magit-hunk-heading           ((,class (:background ,bg3))))
;;         `(magit-section-highlight      ((,class (:background ,bg2))))
;;         `(magit-hunk-heading-highlight ((,class (:background ,bg3))))
;;         `(magit-diff-context-highlight ((,class (:background ,bg3 :foreground ,fg3))))
;;         `(magit-diffstat-added   ((,class (:foreground ,type))))
;;         `(magit-diffstat-removed ((,class (:foreground ,var))))
;;         `(magit-process-ok ((,class (:foreground ,func :weight bold))))
;;         `(magit-process-ng ((,class (:foreground ,warning :weight bold))))
;;         `(magit-branch ((,class (:foreground ,const :weight bold))))
;;         `(magit-log-author ((,class (:foreground ,fg3))))
;;         `(magit-hash ((,class (:foreground ,fg2))))
;;         `(magit-diff-file-header ((,class (:foreground ,fg2 :background ,bg3))))
;;         `(lazy-highlight ((,class (:foreground ,fg2 :background ,bg3))))
;;         `(term ((,class (:foreground ,fg1 :background ,bg1))))
;;         `(term-color-black ((,class (:foreground ,bg3 :background ,bg3))))
;;         `(term-color-blue ((,class (:foreground ,func :background ,func))))
;;         `(term-color-red ((,class (:foreground ,keyword :background ,bg3))))
;;         `(term-color-green ((,class (:foreground ,type :background ,bg3))))
;;         `(term-color-yellow ((,class (:foreground ,var :background ,var))))
;;         `(term-color-magenta ((,class (:foreground ,builtin :background ,builtin))))
;;         `(term-color-cyan ((,class (:foreground ,str :background ,str))))
;;         `(term-color-white ((,class (:foreground ,fg2 :background ,fg2))))
;;         `(rainbow-delimiters-unmatched-face ((,class :foreground ,warning)))
;;         `(helm-header ((,class (:foreground ,fg2 :background ,bg1 :underline nil :box nil))))
;;         `(helm-source-header ((,class (:foreground ,keyword :background ,bg1 :underline nil :weight bold))))
;;         `(helm-selection ((,class (:background ,bg2 :underline nil))))
;;         `(helm-selection-line ((,class (:background ,bg2))))
;;         `(helm-visible-mark ((,class (:foreground ,bg1 :background ,bg3))))
;;         `(helm-candidate-number ((,class (:foreground ,bg1 :background ,fg1))))
;;         `(helm-separator ((,class (:foreground ,type :background ,bg1))))
;;         `(helm-time-zone-current ((,class (:foreground ,builtin :background ,bg1))))
;;         `(helm-time-zone-home ((,class (:foreground ,type :background ,bg1))))
;;         `(helm-buffer-not-saved ((,class (:foreground ,type :background ,bg1))))
;;         `(helm-buffer-process ((,class (:foreground ,builtin :background ,bg1))))
;;         `(helm-buffer-saved-out ((,class (:foreground ,fg1 :background ,bg1))))
;;         `(helm-buffer-size ((,class (:foreground ,fg1 :background ,bg1))))
;;         `(helm-ff-directory ((,class (:foreground ,func :background ,bg1 :weight bold))))
;;         `(helm-ff-file ((,class (:foreground ,fg1 :background ,bg1 :weight normal))))
;;         `(helm-ff-executable ((,class (:foreground ,key2 :background ,bg1 :weight normal))))
;;         `(helm-ff-invalid-symlink ((,class (:foreground ,key3 :background ,bg1 :weight bold))))
;;         `(helm-ff-symlink ((,class (:foreground ,keyword :background ,bg1 :weight bold))))
;;         `(helm-ff-prefix ((,class (:foreground ,bg1 :background ,keyword :weight normal))))
;;         `(helm-grep-cmd-line ((,class (:foreground ,fg1 :background ,bg1))))
;;         `(helm-grep-file ((,class (:foreground ,fg1 :background ,bg1))))
;;         `(helm-grep-finish ((,class (:foreground ,fg2 :background ,bg1))))
;;         `(helm-grep-lineno ((,class (:foreground ,fg1 :background ,bg1))))
;;         `(helm-grep-match ((,class (:foreground nil :background nil :inherit helm-match))))
;;         `(helm-grep-running ((,class (:foreground ,func :background ,bg1))))
;;         `(helm-moccur-buffer ((,class (:foreground ,func :background ,bg1))))
;;         `(helm-source-go-package-godoc-description ((,class (:foreground ,str))))
;;         `(helm-bookmark-w3m ((,class (:foreground ,type))))
;;         `(company-echo-common ((,class (:foreground ,bg1 :background ,fg1))))
;;         `(company-preview ((,class (:background ,bg1 :foreground ,key2))))
;;         `(company-preview-common ((,class (:foreground ,bg2 :foreground ,fg3))))
;;         `(company-preview-search ((,class (:foreground ,type :background ,bg1))))
;;         `(company-scrollbar-bg ((,class (:background ,bg3))))
;;         `(company-scrollbar-fg ((,class (:foreground ,keyword))))
;;         `(company-tooltip ((,class (:foreground ,fg2 :background "#f9f9f9" :bold t))))
;;         `(company-tooltop-annotation ((,class (:foreground ,const))))
;;         `(company-tooltip-common ((,class ( :foreground ,fg3))))
;;         `(company-tooltip-common-selection ((,class (:foreground ,str))))
;;         `(company-tooltip-mouse ((,class (:inherit highlight))))
;;         `(company-tooltip-selection ((,class (:background "#efefef" ))))
;;         `(company-template-field ((,class (:inherit region))))
;;         `(jde-java-font-lock-package-face ((t (:foreground ,var))))
;;         `(jde-java-font-lock-public-face ((t (:foreground ,keyword))))
;;         `(jde-java-font-lock-private-face ((t (:foreground ,keyword))))
;;         `(jde-java-font-lock-constant-face ((t (:foreground ,const))))
;;         `(jde-java-font-lock-modifier-face ((t (:foreground ,key3))))
;;         `(jde-java-font-lock-number-face ((t (:foreground ,var))))
;;         `(jde-java-font-lock-protected-face ((t (:foreground ,keyword))))
;;         `(web-mode-builtin-face ((,class (:inherit ,font-lock-builtin-face))))
;;         `(web-mode-comment-face ((,class (:inherit ,font-lock-comment-face))))
;;         `(web-mode-constant-face ((,class (:inherit ,font-lock-constant-face))))
;;         `(web-mode-keyword-face ((,class (:foreground ,keyword))))
;;         `(web-mode-doctype-face ((,class (:inherit ,font-lock-comment-face))))
;;         `(web-mode-function-name-face ((,class (:inherit ,font-lock-function-name-face))))
;;         `(web-mode-string-face ((,class (:foreground ,str))))
;;         `(web-mode-type-face ((,class (:inherit ,font-lock-type-face))))
;;         `(web-mode-html-attr-name-face ((,class (:foreground ,func))))
;;         `(web-mode-html-attr-value-face ((,class (:foreground ,keyword))))
;;         `(web-mode-warning-face ((,class (:inherit ,font-lock-warning-face))))
;;         `(web-mode-html-tag-face ((,class (:foreground ,builtin))))))


;; ;;;###autoload
;; (when load-file-name
;;   (add-to-list 'custom-theme-load-path
;;                (file-name-as-directory (file-name-directory load-file-name))))

(provide 'core-custom)
