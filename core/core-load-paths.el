(defun add-to-load-path (dir) (add-to-list 'load-path dir))

(defun add-to-load-path-if-exists (dir)
  (when (file-exists-p dir)
    (add-to-load-path dir)))

(defvar taotie-start-directory user-emacs-directory)

(defconst taotie-core-directory
         (expand-file-name (concat taotie-start-directory "core/")))

(add-to-load-path taotie-core-directory)

