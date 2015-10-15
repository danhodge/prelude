;;; personal.el --- Emacs Prelude: Personal settings
;;
;;; Commentary:
;; Personal settings to augment those of Prelude
;; Install Emacs through homebrew with --cocoa --srgb

;;; Code:

(defun dh-prog-mode-defaults ()
  "Set up defaults for programming modes."
  (linum-mode 1)
  (fci-mode 1)
  (setq fci-rule-column 100))

(add-hook 'prog-mode-hook 'dh-prog-mode-defaults)

(setq dh-packages '(rspec-mode yasnippet ag fill-column-indicator gist))

(prelude-require-packages dh-packages)

(require 'prelude-helm-everywhere)

'(require 'rspec-mode)
(require 'yasnippet)
(yas-global-mode 1)

(require 'fill-column-indicator)

; enable file caching for projectile
(setq projectile-enable-caching t)

; custom keybindings
(global-set-key (kbd "M-p") 'ace-window)

(eval-after-load 'rspec-mode
  '(rspec-install-snippets))

;;; personal.el ends here
