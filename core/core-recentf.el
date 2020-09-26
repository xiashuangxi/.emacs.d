(require 'core-funs)
(logPrint "加载 core-recentf")
(use-package recentf
    :defer 5
    :ensure t
    :init (recentf-mode 1)
    :config 
    (setq recentf-max-menu-items 25)
    (setq recentf-max-saved-items 25)
    (global-set-key "\C-x\ \C-r" 'recentf-open-files)
    )
    
(provide 'core-recentf)