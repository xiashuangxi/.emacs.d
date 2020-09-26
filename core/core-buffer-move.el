(require 'core-funs)
(logPrint "加载 core-buffer-move")
(use-package buffer-move
    :ensure t
    :bind   ("<C-S-up>" . buf-move-up)
            ("<C-S-down>" . buf-move-down)
            ("<C-S-left>" . buf-move-left)
            ("<C-S-right>" . buf-move-right)
    )
    
(provide 'core-buffer-move)