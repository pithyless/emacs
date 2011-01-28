(require 'package)
(setq package-archives (cons '("tromey" . "http://tromey.com/elpa/") package-archives))
(package-initialize)

(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(require 'el-get)
(load "el-get-package-hooks.el")

(setq el-get-sources
      '(el-get 
        rainbow-mode
        auto-complete
        switch-window
        magit
        goto-last-change

        (:name buffer-move
               :after (lambda () (buffer-move-hook)))
        (:name ruby-mode 
               :type elpa
               :after (lambda () (ruby-mode-hook)))
        (:name inf-ruby  :type elpa)
        (:name ruby-compilation :type elpa)
        (:name css-mode 
               :type elpa 
               :after (lambda () (css-mode-hook)))
        (:name textmate
               :type git
               :url "https://github.com/defunkt/textmate.el.git"
               :load "textmate.el"
               :after (lambda () (textmate-mode-hook)))
        (:name rvm
               :type git
               :url "https://github.com/djwhitt/rvm.el.git"
               :load "rvm.el"
               :compile ("rvm.el")
               :after (lambda () (rvm-autodetect-ruby)))
        (:name rhtml
               :type git
               :url "https://github.com/crazycode/rhtml.git"
               :features rhtml-mode
               :after (lambda () (rhtml-mode-hook)))
        (:name yaml-mode 
               :type git
               :url "https://github.com/yoshiki/yaml-mode.git"
               :features yaml-mode
               :after (lambda () (yaml-mode-hook)))
	))
(el-get 'sync)
