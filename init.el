(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
;; backwards compatibility as default-buffer-file-coding-system
;; is deprecated in 23.2.
(if (boundp 'buffer-file-coding-system)
    (setq-default buffer-file-coding-system 'utf-8)
  (setq default-buffer-file-coding-system 'utf-8))

;; Treat clipboard input as UTF-8 string first; compound text next, etc.
(setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING))
(set-language-environment 'Esperanto)

;; necesa por instali haskell-mode
(require 'package)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(custom-enabled-themes '(deeper-blue))
 '(package-archives
   '(("gnu" . "https://elpa.gnu.org/packages/")
     ("melpa" . "https://melpa.org/packages/")))
 '(package-selected-packages '(rust-mode haskell-mode)))
(package-initialize)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; necesa por haskell-mode
(setq default-process-coding-system '(utf-8 . utf-8))

;; necesa por rust-mode
;; https://github.com/rust-lang/rust-mode 
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
;;(package-initialize)
(package-refresh-contents)
(require 'rust-mode)
(setq rust-format-on-save t)
(add-hook 'rust-mode-hook
          (lambda () (prettify-symbols-mode)))
(define-key rust-mode-map (kbd "C-c C-c") 'rust-run)

;; Emacs
;;(setq inhibit-startup-screen t)
(menu-bar-mode 0)
(tool-bar-mode 0)
;;(set-default-font "Ubuntu Mono-18")
