(require 'core-funs)
(logPrint "加载 core-ruby")
(use-package rbenv
              :hook (after-init . global-rbenv-mode)
              :init (setq rbenv-show-active-ruby-in-modeline nil
                          rbenv-executable "rbenv"))

(use-package yaml-mode)

(use-package inf-ruby
             :hook ((ruby-mode . inf-ruby-minor-mode)
                    (compilation-filter . inf-ruby-auto-enter)))

(use-package yard-mode
             :diminish
             :hook (ruby-mode . yard-mode))

(use-package ruby-refactor
             :diminish
             :hook (ruby-mode . ruby-refactor-mode-launch))

(use-package yari
             :bind (:map ruby-mode-map ([f1] . yari)))

(use-package rspec-mode
             :diminish
             :commands rspec-install-snippets
             :hook (dired-mode . rspec-dired-mode)
             :config (with-eval-after-load 'yasnippet
                                           (rspec-install-snippets)))

(use-package projectile-rails
             :diminish
             :hook (projectile-mode . projectile-rails-global-mode))

(provide 'core-ruby)
