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
;; 引入模块
;; -----------------------------------------------------------------------------
(require 'core-funs)
(logPrint "饕餮初始化中")
;; language
(require 'core-ruby)
(require 'core-rust)
;; (require 'core-ada)
(require 'core-erlang)

(require 'core-company)
(require 'core-swiper)
(require 'core-avy)
(require 'core-smex)
(require 'core-goto-line-preview)
(require 'core-lsp)
;; (require 'core-xah-fly-keys)
(require 'core-ace-window)
;; (require 'core-iedit)
(require 'core-multiple-cursors)
(require 'core-recentf)
;; (require 'core-f)
(require 'core-direx)
(require 'core-buffer-move)
;; (require 'highlight-80+)
(require 'core-fill-column-indicator)
(require 'core-ido-vertical-mode)
(require 'core-zoom)
(require 'core-move-text)
;; (require 'core-mini-modeline)
(require 'core-dashboard)
(require 'core-ace-jump-buffer)
(require 'core-uniquify)
(require 'core-org)
;; (require 'core-custom)
(require 'core-toml)
(require 'core-neotree)

;; -----------------------------------------------------------------------------
;; 初始化
;; -----------------------------------------------------------------------------
(defun taotie-init()
  (tool-bar-mode 0)
  (show-paren-mode t)
  (column-number-mode t)
  (setq scroll-margin 3 scroll-conservatively 10000)
  (fset 'yes-or-no-p 'y-or-n-p)
  (setq-default make-backup-files nil)

  ;;
  (menu-bar-mode 0)
  (unless (and (display-graphic-p) (eq system-type 'darwin))
    (push '(menu-bar-lines . 0) default-frame-alist))
  (push '(tool-bar-lines . 0) default-frame-alist)
  (push '(vertical-scroll-bars) default-frame-alist)

  (scroll-bar-mode 0)
  (global-linum-mode t)  
  (global-hl-line-mode t)
  (electric-pair-mode t)

  ;; (setq inhibit-splash-screen t)

  (setq make-backup-files nil)

  (setq-default indent-tabs-mode nil)
  (setq-default tab-width 4)
  (setq indent-line-function 'insert-tab)

  ;; 括号自动补全
  (setq skeleton-pair t)
  (global-set-key (kbd "(") 'skeleton-pair-insert-maybe)
  (global-set-key (kbd "[") 'skeleton-pair-insert-maybe)
  (global-set-key (kbd "{") 'skeleton-pair-insert-maybe)

  ;; 设置编码
  ;; (unless *sys/win32*
    (set-selection-coding-system 'utf-8)
    (prefer-coding-system 'utf-8)
    (set-language-environment "UTF-8")
    (set-default-coding-systems 'utf-8)
    (set-terminal-coding-system 'utf-8)
    (set-keyboard-coding-system 'utf-8)
    (setq locale-coding-system 'utf-8)
    ;; )

  (when (display-graphic-p)
    (setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING)))

  ;; 设置个人信息
  (setq user-full-name "Xia Shuangxi")
  (setq user-mail-address "xiashuangxi@hotmail.com")

  ;; 自动在文件末尾添加一行
  (setq require-final-newline t)

  ;; 显示文件大小
  (size-indication-mode t)

  ;; 不检查文件
  (defvar file-name-handler-alist-original file-name-handler-alist)
  (setq file-name-handler-alist nil)

  ;; 
  (setq site-run-file nil)

  ;; 设置垃圾收集
  (defvar better-gc-cons-threshold 67108864)
  (add-hook 'emacs-startup-hook
    (lambda ()
      (setq gc-cons-threshold better-gc-cons-threshold)
      (setq file-name-handler-alist file-name-handler-alist-original)
      (makunbound 'file-name-handler-alist-original)))
  
  (add-hook 'emacs-startup-hook
    (lambda ()
      (if (boundp 'after-focus-change-function)
          (add-function :after after-focus-change-function
                        (lambda ()
                          (unless (frame-focus-state)
                            (garbage-collect))))
        (add-hook 'after-focus-change-function 'garbage-collect))
      (defun gc-minibuffer-setup-hook ()
        (setq gc-cons-threshold (* better-gc-cons-threshold 2)))
      (defun gc-minibuffer-exit-hook ()
        (garbage-collect)
        (setq gc-cons-threshold better-gc-cons-threshold))
      (add-hook 'minibuffer-setup-hook #'gc-minibuffer-setup-hook)
      (add-hook 'minibuffer-exit-hook #'gc-minibuffer-exit-hook)))

  ;; 自定义 modeline
  (custom-set-faces
    '(mode-line ((t (:box (:line-width 1 :color "#f5f5f5") :background "#f8f8ff" ))))
    '(mode-line-inactive ((t (:box (:line-width 1 :color "#f5f5f5") :foreground "#a0a0a0"))))
  )

  ;; buffer列表
  (global-set-key (kbd "C-c C-b") 'ace-jump-buffer)
  
  ;; 关闭备份文件#xxx#
  (setq auto-save-default nil)

  ;; 设置字体大小
  (set-face-attribute 'default nil :height 95)

  ;; 打开标尺
  ;; (add-hook 'find-file-hook (lambda () (ruler-mode 1)))

  ;; 设置窗口大小
  (set-frame-width (selected-frame) 90)

  ;; 解决 flymake-proce-legacy-flymake 问题
  (remove-hook 'flymake-diagnostic-functions 'flymake-proc-legacy-flymake)

  ;; 运行 AutoHotkey 来调换 Caps lock 和 Ctrl 按键
  ;; 必须要在 path 中添加 caps2ctrl.exe 才能使用
  ;; 退出 emacs 时不再提示 kill processes 对话窗
  (setq confirm-kill-processes nil)
  (defvar caps2ctrl-shell-file-name "caps2ctrl.exe")
  (defvar caps2ctrl-shell-buffer "caps2ctrl-log")
  (defvar caps2ctrl-shell-file-path (expand-file-name "bin/caps2ctrl.exe" user-emacs-directory))
  (if (file-exists-p caps2ctrl-shell-file-path)
    (start-process caps2ctrl-shell-file-name caps2ctrl-shell-buffer caps2ctrl-shell-file-path))
)
;;; ----------------------------------------------------------------------------

(provide 'core-taotie)

;; runemacs -q -l E:\source\elegant-emacs\sanity.el -l E:\source\elegant-emacs\elegance.el E:\source\elegant-emacs\Splash.org &
