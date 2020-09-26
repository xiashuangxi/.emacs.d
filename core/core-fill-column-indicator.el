(require 'core-funs)
(logPrint "加载 core-fill-column-indicator")
(use-package fill-column-indicator
    :ensure t
    ;; :config (
    
    ;;     (setq-default fci-rule-column 80)
    ;;     (setq fci-rule-width 8)
    ;;     ;; (setq fci-rule-color "grey80")
    ;;     (setq fci-rule-color "grey95")
    ;;     (setq-default fci-rule-character-color "green")
    ;;     (add-hook 'after-change-major-mode-hook 'fci-mode)
    ;; )
    :config
    (progn
        (setq-default fci-rule-column 79)
        (setq fci-rule-width 8)
        (setq fci-rule-color "grey95")
        (setq-default fci-rule-character-color "green")
    )
    )
    :init (add-hook 'find-file-hook 'fci-mode)
(provide 'core-fill-column-indicator)