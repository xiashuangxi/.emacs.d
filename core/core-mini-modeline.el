(require 'core-funs)
(logPrint "加载 core-mini-modeline")
(use-package mini-modeline
  :after smart-mode-line
  :config
  (mini-modeline-mode t))

(provide 'core-mini-modeline)