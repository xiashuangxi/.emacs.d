(require 'core-funs)
(logPrint "加载 core-multiple-cursors")
(use-package multiple-cursors
    :defer 5
    :ensure t
    :bind (("C-S-c C-S-c" . mc/edit-lines)
        ("C->" . mc/mark-next-like-this)
        ("C-<" . mc/mark-previous-like-this)
        ("C-c C-<" . mc/mark-all-like-this))
    )
(provide 'core-multiple-cursors)