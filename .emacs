(add-to-list 'load-path "~/.emacs.d/idris-mode")
(require 'idris-mode)
(set-face-attribute 'default nil :height 280)
(add-to-list 'load-path "~/.emacs.d/color-theme")
(require 'color-theme)
(color-theme-initialize)
(color-theme-renegade)
(global-set-key (kbd "C-x C-7") 'load-file)
(shell)
(kill-buffer "*scratch*")
(defun buffer-exists (bufname) (not (eq nil (get-buffer bufname))))
(if (buffer-exists "*Buffer List*")
    (kill-buffer "*Buffer List*"))
(defadvice save-buffers-kill-emacs (around no-query-kill-emacs activate)
  "Prevent annoying \"Active processes exist\" query when you quit Emacs."
  (flet ((process-list ())) ad-do-it))
;goldenrod
;rhyerson
;renegade
;robin-hood
;tty-dark
;arjen
;comidia
;oswald

(setq
   backup-by-copying t      ; don't clobber symlinks
   backup-directory-alist
    '(("." . "~/.emacs_backups"))    ; don't litter my fs tree
   delete-old-versions t
   kept-new-versions 6
   kept-old-versions 2)

(add-hook 'window-setup-hook 'delete-other-windows)
(add-to-list 'default-frame-alist '(height . 16))
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

