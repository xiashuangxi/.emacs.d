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
 
;; -------------------------erlang----------------------------------------------
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