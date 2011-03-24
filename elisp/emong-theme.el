;;; emong-theme.el --- Custom face theme for Emacs

;; Copyright (C) 2010 Alban L.

;; This file is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <http://www.gnu.org/licenses/>.

;;; Code:

(deftheme emong
  "")

(custom-theme-set-faces
 'emong
 '(default ((t (:background "#ffffff" :foreground "#3d3d3d"))))
 '(cursor ((t (:background "#b0ccb8" :foreground "#3d3d3d"))))
 '(region ((t (:background "#8f9ba6"))))
 '(mode-line ((t (:background "#3c3b37" :foreground "#e6e6e6"))))
 '(mode-line-inactive ((t (:background "#e0ded3" :foreground "#3d4d3d"))))
 '(fringe ((t (:background "#e0ded3"))))
 '(minibuffer-prompt ((t (:foreground "#0000cd"))))
 '(font-lock-builtin-face ((t (:foreground "#304153"))))
 '(font-lock-comment-face ((t (:slant italic :foreground "#52561e"))))
 '(font-lock-constant-face ((t (:foreground "#553228"))))
 '(font-lock-function-name-face ((t (:foreground "#600253"))))
 '(font-lock-keyword-face ((t (:foreground "#00577d"))))
 '(font-lock-string-face ((t (:foreground "#82042d"))))
 '(font-lock-type-face ((t (:foreground "#005d2f"))))
 ;; '(font-lock-variable-name-face ((t (:foreground "#84816e"))))
 '(font-lock-variable-name-face ((t (:foreground "#709ba8"))))
 '(font-lock-warning-face ((t (:foreground "#ff0000" :weight bold))))
 '(isearch ((t (:background "#cdc04c" :foreground "#3d3d3d"))))
 '(lazy-highlight ((t (:background "#afeeee"))))
 '(link ((t (:foreground "#656577" :underline t))))
 '(link-visited ((t (:foreground "#829982" :underline t))))
 '(button ((t (:underline t))))
 '(header-line ((t (:background "#e0ded3" :foreground "#3d3d3d")))))

(provide-theme 'emong)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; emong-theme.el  ends here
