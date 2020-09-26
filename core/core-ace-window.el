(require 'core-funs)
(logPrint "加载 core-ace-window")
(use-package ace-window
    :ensure t
    :defer 5
    :init
    (progn
        (global-set-key [remap other-window] 'ace-window)
	  (custom-set-faces '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0))) ))
	  ))
(provide 'core-ace-window)