;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
;; (setq user-full-name "John Doe"
;;       user-mail-address "john@doe.com")

;; THEMES
;;(setq doom-theme 'doom-one)
;;(setq doom-theme 'doom-moonlight)
;;(setq doom-theme 'doom-ayu-dark)
(setq doom-theme 'doom-tokyo-night)
;(setq doom-theme 'catppuccin)

;; OPACITY
(doom/set-frame-opacity 95)

;; treemacs
(setq treemacs-position 'right)

;; FONT
(setq doom-font (font-spec :family "JetBrains Mono" :size 30))

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, se this to `relative'.
(setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")


;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

(setq exec-path (append exec-path '("C:/msys64/mingw64/bin")))

;; WEB
(use-package! web-mode
  :mode (("\\.html?\\'" . web-mode)
         ("\\.cshtml?\\'" . web-mode)
         ("\\.svelte?\\'" . web-mode))
  :config
  (setq web-mode-engines-alist
        '(("razor" . "\\.cshtml\\'")
          ("blade" . "\\.blade\\.")
          ("svelte" . "\\.svelte\\."))))
