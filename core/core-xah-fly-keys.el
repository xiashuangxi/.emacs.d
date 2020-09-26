(require 'core-funs)
(logPrint "加载 core-xah-fly-keys")
(use-package xah-fly-keys
    :ensure t
    :init (xah-fly-keys-set-layout "qwerty") 
    )

(provide 'core-xah-fly-keys)