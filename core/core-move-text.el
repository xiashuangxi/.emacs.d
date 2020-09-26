(require 'core-funs)
(logPrint "加载 core-move-text")
(use-package move-text
    :ensure t
    :config
    :init (move-text-default-bindings)
)

(provide 'core-move-text)