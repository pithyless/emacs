(setq path "/bin:/usr/bin:/sbin:/usr/sbin:/usr/local/bin")
(setenv "PATH" path)
(push "/usr/local/bin" exec-path)

(setq default-input-method "MacOSX")
(setq ns-command-modifier 'meta)
(setq mac-option-modifier 'super)

;; Use the clipboard, pretty please, so that copy/paste "works"
(setq x-select-enable-clipboard t)

(setq make-backup-files nil)
(setq auto-save-default nil)
(setq-default tab-width 2)
(setq js-indent-level 2)
(setq-default indent-tabs-mode nil)
(setq inhibit-startup-message t)
(setq inhibit-splash-screen t)
(setq ring-bell-function 'ignore)

(fset 'yes-or-no-p 'y-or-n-p)

(delete-selection-mode t)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(blink-cursor-mode t)
(show-paren-mode t)
(column-number-mode t)
(set-fringe-style -1)
(tooltip-mode -1)

(set-frame-font "Menlo-14")
;; (load-theme 'tango)
(load "elisp/emong-theme.el")

;; load global helpers for some neat functions
(load "helpers/global.el")

;;;(global-unset-key (kbd "M-n"))
;;;(global-unset-key (kbd "M-o"))
;;;(global-unset-key (kbd "M-s"))
;;;(global-set-key (kbd "M-o") 'find-file)
;;;(global-set-key (kbd "M-w") 'close-current-buffer)
;;;(global-set-key (kbd "M-s") 'save-buffer)
;;;(global-set-key (kbd "M-S-s") 'write-file)
;;;(global-set-key (kbd "M-a") 'mark-whole-buffer)
;;;(global-set-key (kbd "M-x") 'kill-region)
;;;(global-set-key (kbd "M-c") 'kill-ring-save)
;;;(global-set-key (kbd "M-v") 'yank)
;;;(global-set-key (kbd "M-V") 'yank-pop)
;;;(global-set-key (kbd "M-C") 'copy-all)
;;;(global-set-key (kbd "M-X") 'cut-all)
;;;(global-set-key (kbd "M-z") 'undo)
;;;(global-set-key (kbd "M-Z") 'redo)

;;;(global-set-key (kbd "C-x x") 'execute-extended-command)
;;;(global-set-key (kbd "M-p") 'dabbrev-expand)
;;;(define-key lisp-mode-shared-map (kbd "M-r") 'eval-buffer)
;;;(define-key lisp-mode-shared-map (kbd "C-j") 'eval-last-sexp)

;;;;; these functions are found in helpers/global
(global-set-key (kbd "M-n") 'ns-toggle-fullscreen)
(global-set-key (kbd "C-M-k") 'delete-whole-line)
(global-set-key (kbd "C-M-{") 'indent-buffer)
;;;(global-set-key (kbd "C-;") 'swap-window-positions)

;; 'maximize-frame currently kills kittens in my MacOSX 10.6
;;(global-set-key (kbd "M-n") 'maximize-frame)

(recentf-mode 1)
(require 'ido)
(ido-mode t)
(setq ido-enable-prefix nil
      ido-enable-flex-matching t)

(defun recentf-ido-find-file ()
  "Find a recent file using Ido."
  (interactive)
  (let ((file (ido-completing-read "Choose recent file: " recentf-list nil t)))
    (when file
      (find-file file))))
(global-set-key (kbd "C-x f") 'recentf-ido-find-file)

(global-hl-line-mode t) ;; turn on line-highlight for all modes by default

;; Moving around in windows
(windmove-default-keybindings 'meta)
(setq windmove-wrap-around t)

(winner-mode 1)

(require 'ibuffer)
(global-set-key "\C-x\C-b" 'ibuffer)

;; use iswitchb-mode for C-x b
(iswitchb-mode)

;; PeepOpen
(add-to-list 'load-path "~/.emacs.d/vendor")
(require 'textmate)
(require 'peepopen)
(defun peepopen-bind-ns-keys ()
  (define-key *textmate-mode-map* [(meta o)] 'peepopen-goto-file-gui))
(textmate-mode)
(setq ns-pop-up-frames nil)
