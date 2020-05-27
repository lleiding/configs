(ido-mode 1) ;; path auto-completion features in mini-buffer
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-term-color-vector
   [unspecified "#f9f5d7" "#9d0006" "#79740e" "#b57614" "#076678" "#8f3f71" "#076678" "#504945"] t)
 '(base16-highlight-mode-line (quote contrast))
 '(custom-safe-themes
   (quote
    ("100eeb65d336e3d8f419c0f09170f9fd30f688849c5e60a801a1e6addd8216cb" "a06658a45f043cd95549d6845454ad1c1d6e24a99271676ae56157619952394a" "fee4e306d9070a55dce4d8e9d92d28bd9efe92625d2ba9d4d654fc9cd8113b7f" "b583823b9ee1573074e7cbfd63623fe844030d911e9279a7c8a5d16de7df0ed0" "0dd2666921bd4c651c7f8a724b3416e95228a13fca1aa27dc0022f4e023bf197" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" default)))
 '(ess-use-flymake nil)
 '(fill-column 80)
 '(frame-background-mode nil)
 '(menu-bar-mode nil)
 '(package-selected-packages
   (quote
    (gruvbox-theme base16-theme poly-org poly-R polymode julia-repl ess)))
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Iosevka" :foundry "CYEL" :slant normal :weight normal :height 102 :width normal)))))
(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line
(require 'poly-markdown)
(add-to-list 'auto-mode-alist '("\\.md" . poly-markdown-mode))
(require 'poly-R)
(add-to-list 'auto-mode-alist '("\\.Rmd" . poly-markdown+r-mode))
(load "ess-site")
(ess-toggle-underscore nil)
;;(xterm-mouse-mode t)
(load-theme 'base16-gruvbox-light-hard t)
(setq org-src-fontify-natively t)
;;(setq x-underline-at-descent-line t) ;; shifts underline when in X
(global-auto-revert-mode t)
;; Must have org-mode loaded before we can configure org-babel
(require 'org-install)
(require 'ob-shell)
;; Some initial langauges we want org-babel to support
(org-babel-do-load-languages
 'org-babel-load-languages
 '(
   (shell . t)
   (python . t)
   (R . t)
   ;;(ruby . t)
   ;;(ditaa . t)
   ;;(dot . t)
   ;;(octave . t)
   ;;(sqlite . t)
   (perl . t)
   ))

