;;; personal.el --- Emacs Prelude: Personal settings
;;
;;; Commentary:
;; Personal settings to augment those of Prelude
;; Install Emacs through homebrew with --cocoa --srgb

;;; Code:

;; enable line numbers for all programming modes
(add-hook 'prog-mode-hook '(lambda ()
                             (linum-mode 1)))
