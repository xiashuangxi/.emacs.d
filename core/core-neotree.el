(require 'core-funs)
(logPrint "加载 core-neotree")
(use-package neotree
    :ensure t
    :bind (
            ([f8] . neotree-toggle)
        )
    :config
    (setq neo-smart-open t)
)
(provide 'core-neotree)