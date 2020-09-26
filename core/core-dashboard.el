(require 'core-funs)
(logPrint "加载 core-dashboard")
;; (use-package all-the-icons
;;     :ensure t)
;; (use-package dashboard
;;     :demand
;;     :diminish (dashboard-mode page-break-lines-mode)
;;     :bind
;;     (
;;         ("C-m" . open-dashboard)
;;         :map dashboard-mode-map
;;         (("n" . dashboard-next-line)
;;          ("p" . dashboard-previous-line)
;;          ("N" . dashboard-next-section)
;;          ("F" . dashboard-previous-section))
;;     )
;;     :custom
;;     (dashboard-banner-logo-ttile "HHHHHHHH")
;;     ;; (dashboard-startup-banner (expand-file-name "C:/Users/xiash/AppData/Roaming/.emacs.d/images/logo.jpg" user-emacs-directory))
;;     (dashboard-startup-banner (expand-file-name "images/KEC_Dark_BK_Small.png" user-emacs-directory))

;;     (dashboard-items '((recents . 7)
;;                        (bookmarks . 7)
;;                        (agenda . 5)))
;;     (initial-buffer-choice (lambda () (get-buffer dashboard-buffer-name)))
;;     (dashboard-set-heading-icons t)
;;     (dashboard-set-navigator t)
;;     (dashboard-navigator-buttons
;;         (if (featurep 'all-the-icons)
;;         `(((,(all-the-icons-octicon "mark-github" :height 1.1 :v-adjust -0.05)
;;            "M-EMACS" "Browse M-EMACS Homepage"
;;            (lambda (&rest _) (browse-url "https://github.com/MatthewZMD/.emacs.d")))
;;           (,(all-the-icons-fileicon "elisp" :height 1.0 :v-adjust -0.1)
;;            "Configuration" "" (lambda (&rest _) (edit-configs)))
;;           (,(all-the-icons-faicon "cogs" :height 1.0 :v-adjust -0.1)
;;            "Update" "" (lambda (&rest _) (auto-package-update-now)))))
;;         `((("" "M-EMACS" "Browse M-EMACS Homepage"
;;             (lambda (&rest _) (browse-url "https://github.com/MatthewZMD/.emacs.d")))
;;             ("" "Configuration" "" (lambda (&rest _) (edit-configs)))
;;             ("" "Update" "" (lambda (&rest _) (auto-package-update-now)))))))
;;     :custom-face
;;     (dashboard-banner-logo-title ((t (:family "Love LetterTW" :height 123))))
;;     :config
;;     ;; (dashboard-modify-heading-icons '((recents . "file-text")
;;     ;;                                     (bookmarks . "book")))

;;     (setq dashboard-items '((recents  . 5)
;;                         (bookmarks . 5)
;;                         (projects . 5)
;;                         (agenda . 5)
;;                         (registers . 5)))

;;     ;; (setq dashboard-init-info "This is an init message!")

;;     ;; 初始化信息
;;     (setq dashboard-init-info
;;         (if (bound-and-true-p package-alist)
;;             (format "%d 个包加载用时 %s" (length package-activated-list) (emacs-init-time))
;;             (if (and (boundp 'straight--profile-cache) (hash-table-p straight--profile-cache))
;;                 (format "%d 个包加载用时 %s" (hash-table-size straight--profile-cache) (emacs-init-time))
;;                 (format "Emacs 启动 %s" (emacs-init-time))
;;             )
;;         )
;;     )

;;     (dashboard-setup-startup-hook)
;;     (defun open-dashboard ()
;;         (interactive)
;;         (if (get-buffer dashboard-buffer-name)
;;             (kill-buffer dashboard-buffer-name))
;;         (dashboard-insert-startupify-lists)
;;         (switch-to-buffer dashboard-buffer-name)
;;         (goto-char (point-min))
;;         (delete-other-windows))
;; )

(use-package dashboard
    :demand
    :diminish (dashboard-mode page-break-lines-mode)
)

(provide 'core-dashboard)