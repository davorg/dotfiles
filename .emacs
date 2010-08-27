
(add-to-list 'load-path "/home/dave/.site-lib")

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(cperl-close-paren-offset -4)
 '(cperl-continued-statement-offset 4)
 '(cperl-indent-level 4)
 '(cperl-indent-parens-as-block t)
 '(cperl-tab-always-indent t)
 '(scroll-bar-mode (quote right))
 '(show-paren-mode t)
 '(tab-stop-list (quote (4 8 12 16 20 24 28 32 36 40 44 48 52 56 60)))
 '(setq tab-width 4))

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "white" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 98 :width normal :foundry "unknown" :family "DejaVu Sans Mono")))))

;; Use cperl-mode instead of the default perl-mode
(defalias 'perl-mode 'cperl-mode)

;; ;; just spaces
(setq-default indent-tabs-mode nil)

;; Use 4 space indents via cperl mode

(autoload 'define-compilation-mode	"compile" "" t)
(autoload 'perlcritic        "perlcritic" "" t)
(autoload 'perlcritic-region "perlcritic" "" t)
(autoload 'perlcritic-mode   "perlcritic" "" t)

(eval-after-load "cperl-mode"
  '(add-hook 'cperl-mode-hook 'perlcritic-mode))
(eval-after-load "perl-mode"
  '(add-hook 'perl-mode-hook 'perlcritic-mode))

