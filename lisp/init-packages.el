(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")

(el-get-bundle flx)
(el-get-bundle ido-ubiquitous)
(el-get-bundle smex)
(el-get-bundle company-mode)
(el-get-bundle magit)
(el-get-bundle smartparens)
(el-get-bundle lua-mode)
(el-get-bundle ibuffer-vc)
(el-get-bundle expand-region)
(el-get-bundle xcscope)
(el-get-bundle browse-kill-ring)
(el-get-bundle web-mode)
(el-get-bundle nginx-mode)
(el-get-bundle monokai-theme)
(el-get-bundle git-gutter-fringe)
(el-get-bundle ag)
(el-get-bundle highlight-indentation)
(el-get-bundle ruby-mode)
(el-get-bundle inf-ruby)
(el-get-bundle yari)
(el-get-bundle htmlize)
(el-get-bundle sr-speedbar)
(el-get-bundle haskell-mode)
(el-get-bundle rust-mode)
(el-get-bundle racer)

;; for lsp
(el-get-bundle projectile)

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(provide 'init-packages)
