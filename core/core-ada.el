(require 'core-funs)
(logPrint "加载 core-ada")
(use-package ada-mode
    :ensure t
)

;; (defgroup project-build nil
;;   "LSP options for Project"
;;   :group 'ada-mode)

;; (defcustom project-build-type "Debug"
;;   "Controls the type of build of a project.
;;    Default is Debug, other choices are Release and Coverage."
;;   :type '(choice
;;           (const "Debug")
;;           (const "Coverage")
;;           (const "Release"))
;;   :group 'project-build)


(provide 'core-ada)