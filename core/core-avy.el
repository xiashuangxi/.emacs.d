(require 'core-funs)
(logPrint "加载 core-avy")
(use-package avy
    :ensure t
    :defer 5
    :bind (("C-;" . avy-goto-char)))
(provide 'core-avy)