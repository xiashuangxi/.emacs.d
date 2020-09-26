(require 'core-funs)
(logPrint "加载 core-erlang")
;; (use-package erlang
;;     :ensure t
;;     :config
;;     ;; (use-package distel-completion-lib
;;     ;;     :ensure t)
;;     ;; (use-package company-distel
;;     ;;     :ensure t)
;; (require 'erlang-start)
;;     (defvar lsp-method-requirements
;;   '(("textDocument/onTypeFormatting" :capability "documentOnTypeFormattingProvider")
;;     ("workspace/executeCommand"
;;      :capability "executeCommandProvider"
;;      :registered-capability "workspace/executeCommand")
;;     ("textDocument/hover" :capability "hoverProvider")
;;     ("textDocument/documentSymbol" :capability "documentSymbolProvider")
;;     ("textDocument/documentHighlight" :capability "documentHighlightProvider")
;;     ("textDocument/definition" :capability "definitionProvider")
;;     ("workspace/symbol" :capability "workspaceSymbolProvider")
;;     ("textDocument/signatureHelp" :capability  "signatureHelpProvider")
;;     ("textDocument/prepareRename"
;;      :check-command (lambda (workspace)
;;                       (with-lsp-workspace workspace
;;                         (let ((table (lsp--capability "renameProvider")))
;;                           (and (hash-table-p table)
;;                                (gethash "prepareProvider" table)))))))
;;   "Contain method to requirements mapping.
;; It is used by send request functions to determine which server
;; must be used for handling a particular message.")
;; )


;; (use-package erlang
;;     :defer t
;;     :init
;;     :config 
    
;;     ;; (use-package distel
;;     ;;     :ensure t
;;     ;;     :init (distel-setup))

;;     (use-package ac-erlmode
;;         :ensure t)

;;     (require 'erlang-start)
    
;; )


;; (use-package ivy-erlang-complete
;;     :ensure t
;;     :config
;;     (add-hook 'erlang-mode-hook #'ivy-erlang-complete-init)
;;     ;; automatic update completion data after save
;;     (add-hook 'after-save-hook #'ivy-erlang-complete-reparse)
;; )

;; (use-package company-erlang
;;     :ensure t
;;     :config 
;;     (add-hook 'erlang-mode-hook #'company-erlang-init)
;; )



;; (setq default-frame-alist  
;; '((top . 50) (left . 100)  
;; (width . 95) (height . 35)  
;; (cursor-color . "blue" )  
;; (cursor-type . box)  
;; (foreground-color . "green" )  
;; (background-color . "black" )  
;; ))  
;; (show-paren-mode)  
;; (global-font-lock-mode t) 
;; ;; Erlang mode
;; (setq load-path (cons  "D:/Program Files/erl-23.0/lib/tools-3.4/emacs" load-path))
;; (setq erlang-root-dir "D:/Program Files/erl-23.0")
;; (setq exec-path (cons "D:/Program Files/erl-23.0/bin" exec-path))
;; (require 'erlang-start)
 
;; ;; Distel
;; (let ((distel-dir "D:/Program Files/erl-23.0/lib/distel/elisp"))
;;   (unless (member distel-dir load-path)
;;     (setq load-path (append load-path (list distel-dir)))))
;; (require 'distel)
;; (distel-setup)
;; ;; Some Erlang customizations
;; (add-hook 'erlang-mode-hook
;;   (lambda ()
;;   ;; when starting an Erlang shell in Emacs, default in the node name
;;     (setq inferior-erlang-machine-options '("-sname" "emacs"))
;;     ;; add Erlang functions to an imenu menu
;;     (imenu-add-to-menubar "imenu")))
;; ;; A number of the erlang-extended-mode key bindings are useful in the shell too
;; (defconst distel-shell-keys
;;   '(("\C-\M-i"   erl-complete)
;;     ("\M-?"      erl-complete) 
;;     ("\M-."      erl-find-source-under-point)
;;     ("\M-,"      erl-find-source-unwind) 
;;     ("\M-*"      erl-find-source-unwind) 
;;     )
;;   "Additional keys to bind when in Erlang shell.")
;; (add-hook 'erlang-shell-mode-hook
;;    (lambda ()
;;      ;; add some Distel bindings to the Erlang shell
;;      (dolist (spec distel-shell-keys)
;;        (define-key erlang-shell-mode-map (car spec) (cadr spec)))))

;; (use-package erlang
;;     :defer t
;;     :init
;;     :config 
    
;;     (require 'erlang-start)
    
;; )

;; (setq load-path (cons  "D:/Program Files/erl-23.0/lib/tools-3.4/emacs" load-path))
;; (setq erlang-root-dir "D:/Program Files/erl-23.0")
;; (setq exec-path (cons "D:/Program Files/erl-23.0/bin" exec-path))
;; (require 'erlang-start)

 

;; ;; Distel
;; ;; (let ((distel-dir "D:/Program Files/erl-23.0/lib/distel"))
;; ;;   (unless (member distel-dir load-path)
;;     ;; (setq load-path (append load-path (list )))))
;; (require 'distel)
;; (distel-setup)

 

;; ;; Some Erlang customizations
;; (add-hook 'erlang-mode-hook
;;   (lambda ()
;;   ;; when starting an Erlang shell in Emacs, default in the node name
;;     (setq inferior-erlang-machine-options '("-sname" "emacs"))
;;     ;; add Erlang functions to an imenu menu
;;     (imenu-add-to-menubar "imenu")))

 

;; ;; A number of the erlang-extended-mode key bindings are useful in the shell too
;; (defconst distel-shell-keys
;;   '(("/C-/M-i"   erl-complete)
;;     ("/M-?"      erl-complete) 
;;     ("/M-."      erl-find-source-under-point)
;;     ("/M-,"      erl-find-source-unwind) 
;;     ("/M-*"      erl-find-source-unwind) 
;;     )
;;   "Additional keys to bind when in Erlang shell.")
;; (add-hook 'erlang-shell-mode-hook
;;    (lambda ()
;;      ;; add some Distel bindings to the Erlang shell
;;      (dolist (spec distel-shell-keys)
;;        (define-key erlang-shell-mode-map (car spec) (cadr spec)))))





 
;;--------------------------erlang----------------------------------------------------
(setq load-path (cons "D:/Program Files/erl-23.0/lib/tools-3.4/emacs" load-path))
(setq erlang-root-dir "D:/Program Files/erl-23.0")
(setq exec-path (cons "D:/Program Files/erl-23.0/bin" exec-path))
(require 'erlang-start)
(add-to-list 'auto-mode-alist '("\\.erl?$" . erlang-mode))
(add-to-list 'auto-mode-alist '("\\.hrl?$" . erlang-mode))
;; (add-to-list 'load-path "~/.emacs.d/erlware-mode")

;; (use-package erlware-mode
;;     :ensure t)
 
;;----------------------distel-------------------
 
;; (let ((distel-dir "D:/Program Files/erl-23.0/lib/distel/elisp"))
;;     (message distel-dir)
;;     (unless (member distel-dir load-path)
;;         ;; Add distel-dir to the end of load-path
;;         (setq load-path (append load-path (list distel-dir)))))
 
;; (require 'distel)
;; (use-package distel
;;     :ensure t)
;; (distel-setup)
;; Some Erlang customizations
;; (add-hook 'erlang-mode-hook
;;   (lambda ()
 
;;   ;; when starting an Erlang shell in Emacs, default in the node name
;;     (setq inferior-erlang-machine-options '("-sname" "emacs"))
    
;;     ;; add Erlang functions to an imenu menu
;;     (imenu-add-to-menubar "imenu")))
;; prevent annoying hang-on-compile
;; (defvar inferior-erlang-prompt-timeout t)
;; tell distel to default to that node
;; (setq erl-nodename-cache
;;       (make-symbol
;;        (concat
;;         "emacs@"
;;         ;; Mac OS X uses "name.local" instead of "name", this should work
;;         ;; pretty much anywhere without having to muck with NetInfo
;;         ;; ... but I only tested it on Mac OS X.
;;         (car (split-string (shell-command-to-string "hostname"))))))
;; A number of the erlang-extended-mode key bindings are useful in the shell too
;; (defconst distel-shell-keys
;;   '(("\C-\M-i"   erl-complete)
;;     ("\M-?"      erl-complete)
;;     ("\M-."      erl-find-source-under-point)
;;     ("\M-,"      erl-find-source-unwind)
;;     ("\M-*"      erl-find-source-unwind)
;;     )
;;   "Additional keys to bind when in Erlang shell.")
;; (add-hook 'erlang-shell-mode-hook
;;   (lambda ()
;; ;; add some Distel bindings to the Erlang shell
;;         (dolist (spec distel-shell-keys)
;;         (define-key erlang-shell-mode-map (car spec) (cadr spec)))))


(use-package erlang
    :ensure t
    :config

    (setq load-path (cons "D:/Program Files/erl-23.0/lib/tools-3.4/emacs" load-path))
    (setq erlang-root-dir "D:/Program Files/erl-23.0")
    (setq exec-path (cons "D:/Program Files/erl-23.0/bin" exec-path))
    (require 'erlang-start)
    (add-to-list 'auto-mode-alist '("\\.erl?$" . erlang-mode))
    (add-to-list 'auto-mode-alist '("\\.hrl?$" . erlang-mode))

    ;; (defvar lsp-method-requirements 
    ;;     '(("textDocument/documentHighlight" :capability "documentHighlightProvider")))

    ;; (defvar lsp-method-requirements
    ;; '(("textDocument/onTypeFormatting" :capability "documentOnTypeFormattingProvider")
    ;;     ("workspace/executeCommand"
    ;;     :capability "executeCommandProvider"
    ;;     :registered-capability "workspace/executeCommand")
    ;;     ("textDocument/hover" :capability "hoverProvider")
    ;;     ("textDocument/documentSymbol" :capability "documentSymbolProvider")
    ;;     ("textDocument/documentHighlight" :capability "documentHighlightProvider")
    ;;     ("textDocument/definition" :capability "definitionProvider")
    ;;     ("workspace/symbol" :capability "workspaceSymbolProvider")
    ;;     ("textDocument/signatureHelp" :capability  "signatureHelpProvider")
    ;;     ("textDocument/prepareRename"
    ;;     :check-command (lambda (workspace)
    ;;                     (with-lsp-workspace workspace
    ;;                         (let ((table (lsp--capability "renameProvider")))
    ;;                         (and (hash-table-p table)
    ;;                             (gethash "prepareProvider" table)))))))
    ;; "Contain method to requirements mapping.
    ;; It is used by send request functions to determine which server
    ;; must be used for handling a particular message.")

    (let ((distel-dir "D:/Program Files/erl-23.0/lib/distel/elisp"))
        ;; (message distel-dir)
        (unless (member distel-dir load-path)
            ;; Add distel-dir to the end of load-path
            (setq load-path (append load-path (list distel-dir)))))
    
    ;; (when (locate-library "distel")
    ;;     (require 'distel)
    ;;     (distel-setup)
    ;; )
;; (distel-setup)
    (add-hook 'erlang-mode-hook
        (lambda ()
            (setq inferior-erlang-machine-options '("-sname" "emacs"))
            (imenu-add-to-menubar "imenu")))

    (defvar inferior-erlang-prompt-timeout t)

    (setq erl-nodename-cache
        (make-symbol
            (concat "emacs@"
                (car (split-string (shell-command-to-string "hostname"))))))

    (defconst distel-shell-keys
        '(("\C-\M-i"   erl-complete)
            ("\M-?"      erl-complete)
            ("\M-."      erl-find-source-under-point)
            ("\M-,"      erl-find-source-unwind)
            ("\M-*"      erl-find-source-unwind)
            )
        "Additional keys to bind when in Erlang shell.")

    (add-hook 'erlang-shell-mode-hook
        (lambda ()
            (dolist (spec distel-shell-keys)
            (define-key erlang-shell-mode-map (car spec) (cadr spec)))))
)

(provide 'core-erlang)

;; -----------------------------------------------------------------------------
;; # 参考
;; see: http://alexott.net/en/writings/emacs-devenv/EmacsErlang.html
;; -----------------------------------------------------------------------------

;; -----------------------------------------------------------------------------
;; # Bug
;; LSP :: Error from the Language Server: Unexpected error while 
;; textDocument/documentHighlight (Unknown Error Code)
;; -----------------------------------------------------------------------------