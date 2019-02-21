;;(add-to-list 'load-path "/home/ludwig/.emacs.d/themes/emacs-color-theme-solarized")
;;(add-to-list 'custom-theme-load-path "/home/ludwig/.emacs.d/themes/emacs-color-theme-solarized/")
(ido-mode 1) ;; path auto-completion features in mini-buffer
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" default)))
 '(ess-use-flymake nil)
 '(frame-background-mode (quote light))
 '(menu-bar-mode nil)
 '(package-selected-packages
   (quote
    (poly-org solarized-theme poly-R polymode julia-repl ess color-theme-solarized)))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Fira Code" :foundry "CTDB" :slant normal :weight normal :height 102 :width normal)))))
;;(custom-set-faces (if (not window-system) '(default ((t (:background "nil"))))))
(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line
(add-to-list 'load-path "/home/ludwig/.emacs.d/elpa/ess-20180216.1616/lisp/")
(add-to-list 'auto-mode-alist '("\\.md" "\\.Rmd" . poly-markdown-mode))
(add-to-list 'auto-mode-alist '("\\.Rmd" . poly-markdown+r-mode))
(load "ess-site")
(ess-toggle-underscore nil)
;;(xterm-mouse-mode t)
;; (setq inferior-julia-program-name "/usr/bin/julia") ;; apparently not necessary
;; (setq solarized-italic nil)    
(load-theme 'solarized t)
(setq org-src-fontify-natively t)
(setq x-underline-at-descent-line t) ;; shifts underline when in X
(global-auto-revert-mode t)

