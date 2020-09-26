(require 'core-funs)
(logPrint "加载 core-rust")

(use-package rust-mode
  ;; :defer 5
  :ensure t
  :init (setq rust-format-on-save t)
  :config

  (use-package cargo
    ;; :defer 5
    :diminish cargo-minor-mode
    :hook (rust-mode . cargo-minor-mode)
    :config
    ;; To render buttons correctly, keep it at the last
    (setq compilation-filter-hook
          (append compilation-filter-hook '(cargo-process--add-errno-buttons))))

  (use-package rust-playground
    :ensure t
    )
)


(provide 'core-rust)
