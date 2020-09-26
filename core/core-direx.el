(require 'core-funs)
(logPrint "加载 core-direx")
(use-package direx
    :ensure t
    :bind ("C-x C-j" . direx:jump-to-directory-other-window)
    :config
    )
    
(provide 'core-direx)