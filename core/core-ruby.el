;; -----------------------------------------------------------------------------
;; Copyright (c) 2020 xiashuangxi<xiashuangxi@hotmail.com>
;; 
;; Permission is hereby granted, free of charge, to any person obtaining a copy
;; of this software and associated documentation files (the "Software"), to deal
;; in the Software without restriction, including without limitation the rights
;; to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
;; copies of the Software, and to permit persons to whom the Software is
;; furnished to do so, subject to the following conditions:
;; 
;; The above copyright notice and this permission notice shall be included in all
;; copies or substantial portions of the Software.
;; 
;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
;; IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
;; FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
;; AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
;; LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
;; OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
;; SOFTWARE.
;;
;; update:
;;      2020/09/26 xiashuangxi@hotmail.com
;; -----------------------------------------------------------------------------

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
