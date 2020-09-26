(require 'core-funs)
(logPrint "加载 core-zoom")
(use-package zoom
    :defer 5
    :ensure t
    :init (zoom-mode t)
    :bind ("C-x +" . 'zoom)
)
(provide 'core-zoom)