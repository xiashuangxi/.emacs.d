(require 'core-funs)
(logPrint "加载 core-ido-vertical-mode")
(use-package ido-vertical-mode
    :ensure t
    :init
    (ido-mode 1)
    (ido-vertical-mode 1)
    :config
    (setq ido-vertical-define-keys 'C-n-and-C-p-only)
)
(provide 'core-ido-vertical-mode)