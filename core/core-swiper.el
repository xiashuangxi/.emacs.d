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
(logPrint "加载 core-swiper")
(use-package counsel
      :ensure t)

(use-package swiper
  :defer 3
  :ensure t
  :config
  (progn
    ;; (ivy-mode 1)
    (setq ivy-use-virtual-buffers t)
    (setq enable-recursive-minibuffers t)
    (setq ivy-count-format "(%d/%d) ")
    )
    :init (advice-add 'swiper :after #'recenter)
    :bind
    ("C-s" . swiper-isearch)
    ("M-x" . counsel-M-x)
    ("C-x C-f" . counsel-find-file)
    ("M-y" . 'counsel-yank-pop)
    ("<f1> f" . counsel-describe-function)
    ("<f1> v" . counsel-describe-variable)
    ("<f1> l" . counsel-find-library)
    ("<f2> i" . counsel-info-lookup-symbol)
    ("<f2> u" . counsel-unicode-char)
    ("<f2> j" . counsel-set-variable)
    ("C-x b" . ivy-switch-buffer)
    ("C-c v" . ivy-push-view)
    ("C-c V" . ivy-pop-view)
    ("C-c c" . counsel-compile)
    ("C-c g" . counsel-git)
    ("C-c j" . counsel-git-grep)
    ("C-c L" . counsel-git-log)
    ("C-c k" . counsel-rg)
    ("C-c m" . counsel-linux-app)
    ("C-c n" . counsel-fzf)
    ("C-x l" . counsel-locate)
    ("C-c J" . counsel-file-jump)
    ("C-S-o" . counsel-rhythmbox)
    ("C-c w" . counsel-wmctrl)
    ("C-c C-r" . ivy-resume)
    ("C-c b" . counsel-bookmark)
    ("C-c d" . counsel-descbinds)
    ("C-c t" . counsel-load-theme)
    ("C-c F" . counsel-org-file)
    )

(provide 'core-swiper)