(require 'core-funs)
(logPrint "加载 core-goto-line-preview")

(use-package goto-line-preview
    :ensure t
    :bind ([remap goto-line] . 'goto-line-preview)
    ;; :config
    ;; (global-set-key [remap goto-line] 'goto-line-preview)
    ;; (global-set-key (kbd "M-g g") 'goto-line-preview)
    )

(provide 'core-goto-line-preview)