(require 'core-funs)
(logPrint "加载 core-smex")
(use-package smex
    :defer 2
    :ensure t
    :init (smex-initialize)
    :config
        (global-set-key (kbd "M-x") 'smex)
        (global-set-key (kbd "M-X") 'smex-major-mode-commands)
        ;; This is your old M-x.
        (global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
    )
(provide 'core-smex)