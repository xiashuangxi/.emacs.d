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

;; -----------------------------------------------------------------------------
;; 版本
;; -----------------------------------------------------------------------------
(defconst taotie-version "0.0.1" "饕餮版本。")
(defconst taotie-emacs-min-version "27.1" "Emacs最小版本。")

;; -----------------------------------------------------------------------------
;; 启动前进行版本检查
;; -----------------------------------------------------------------------------
(if (not (version<= taotie-emacs-min-version emacs-version))
    (error (concat "您的Emacs (%s) 版本过低。" 
                "饕餮支持最低版本Emacs %s")
           emacs-version taotie-emacs-min-version)
    
    (load-file (concat (file-name-directory load-file-name)
                       "core/core-load-paths.el"))
    
    (setq gc-cons-threshold 200000000)
    
    ;; (profiler-start 'cpu)

    (require 'core-funs)
    (logPrint "饕餮启动中")

    (require 'package)
    (setq package-archives '(
            ("gun" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
   			("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))

    (unless (bound-and-true-p package--initialized) 
        (setq package-enable-at-startup nil)
        (setq package-check-signature nil)
        (package-initialize))
    
    (unless (package-installed-p 'use-package)
        (package-refresh-contents)
        (package-install 'use-package))

    ;; 加载的时候临时增大`gc-cons-threshold'以加速启动速度。
    ;; (gc-cons-threshold most-positive-fixnum)
    ;; 清空避免加载远程文件的时候分析文件。
    (setq file-name-handler-alist nil)

    (eval-and-compile
        (setq use-package-always-ensure t)
        (setq use-package-always-defer t)
        (setq use-package-expand-minimally t)
        (setq use-package-enable-imenu-support t))

    (eval-when-compile
        (require 'use-package))

    (use-package diminish)
    (use-package bind-key)

    (require 'core-taotie)
    (taotie-init)

    (require 'server)
    (unless (server-running-p) (server-start))
    (logPrint (format "Emacs 启动用时 %s"  (emacs-init-time)))        
)
;; -----------------------------------------------------------------------------
;; END
;; -----------------------------------------------------------------------------
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(zoom yari yard-mode yaml-mode xah-fly-keys wisi which-key use-package uniquify-files smex rust-playground ruby-refactor rspec-mode rbenv projectile-rails multiple-cursors move-text mini-modeline lsp-ui lsp-ivy iedit ido-vertical-mode goto-line-preview focus fill-column-indicator direx diminish dashboard dap-mode company-prescient company-erlang company-distel cargo buffer-move benchmark-init all-the-icons ace-jump-buffer)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0))))
 '(mode-line ((t (:box (:line-width 1 :color "#f5f5f5") :background "#f8f8ff"))))
 '(mode-line-inactive ((t (:box (:line-width 1 :color "#f5f5f5") :foreground "#a0a0a0")))))
(provide 'taotie-init)
