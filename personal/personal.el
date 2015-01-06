;;; personal.el --- Emacs Prelude: Personal settings
;;
;;; Commentary:
;; Personal settings to augment those of Prelude
;; Install Emacs through homebrew with --cocoa --srgb

;;; Code:

;; enable line numbers for all programming modes
(add-hook 'prog-mode-hook '(lambda ()
                             (linum-mode 1)))

(setq dh-packages '(rspec-mode yasnippet))

(prelude-require-packages dh-packages)

'(require 'rspec-mode)
(require 'yasnippet)
(yas-global-mode 1)

(eval-after-load 'rspec-mode
  '(rspec-install-snippets))

;;; personal.el ends here
