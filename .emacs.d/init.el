
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("274fa62b00d732d093fc3f120aca1b31a6bb484492f31081c1814a858e25c72e" default)))
 '(package-archives
   (quote
    (("melpa" . "http://melpa.milkbox.net/packages/")
     ("gnu" . "https://elpa.gnu.org/packages/"))))
 '(package-selected-packages
   (quote
    (markdown-mode markdown-mode+ markdown-preview-eww markdown-preview-mode md-readme fzf hydra ivy popup powerline s yafolding auto-complete exec-path-from-shell go-autocomplete find-file-in-project neotree go-mode linum-relative indent-tools airline-themes dracula-theme protobuf-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(add-to-list 'load-path "~/dot_files/.emacs.d/packages/")

(load-theme 'misterioso)

(require 'linum-relative)
(linum-relative-global-mode)
(setq linum-relative-current-symbol "")

(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

(add-to-list 'exec-path "/Users/Viraj_Kumar/work/bin")
(add-hook 'before-save-hook 'gofmt-before-save)
(defun my-go-mode-hook ()
  ; Call Gofmt before saving                                                    
  (add-hook 'before-save-hook 'gofmt-before-save)
  ; Godef jump key binding                                                      
  (local-set-key (kbd "C-b") 'godef-jump)
  (local-set-key (kbd "C-[") 'pop-tag-mark)
  )
(add-hook 'go-mode-hook 'my-go-mode-hook)

(defun auto-complete-for-go ()
  (auto-complete-mode 1))
(add-hook 'go-mode-hook 'auto-complete-for-go)
(with-eval-after-load 'go-mode
  (require 'go-autocomplete))

(setq markdown-command "/usr/local/bin/pandoc")
