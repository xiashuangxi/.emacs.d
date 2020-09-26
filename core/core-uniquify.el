;; (use-package uniquify
;;     :ensure t
;;     :defer 5)
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)
(provide 'core-uniquify)