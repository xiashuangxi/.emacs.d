(require 'core-funs)
(logPrint "加载 core-benchmark-init")

(use-package benchmark-init
  :ensure t
  :config
  (add-hook 'after-init-hook 'benchmark-init/deactivate))

(provide 'core-benchmark-init)