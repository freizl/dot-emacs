
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; variables
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'paren)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(auto-fill-mode t)
 '(custom-enabled-themes (quote (manoj-dark)))
 '(blink-cursor-mode nil)
 '(column-number-mode 1)
 '(display-time-day-and-date t)
 '(line-number-mode 1)
 '(longlines-auto-wrap 1)
 '(longlines-show-hard-newlines t)
 '(longlines-wrap-follows-window-size 1)
 '(next-line-add-newlines nil)
 '(require-final-newline t)
 '(scroll-bar-mode nil)
 '(search-highlight t)
 '(show-paren-mode t)
 '(standard-indent 4)
 '(tool-bar-mode nil)
 '(transient-mark-mode t)
 '(inhibit-startup-screen t)
; '(split-width-threshold nil)         ;; old emacs style split
 '(dired-listing-switches' "-l")
 '(delete-by-moving-to-trash t)
 '(org-log-done (quote time))
 '(org-special-ctrl-a/e t)
 '(kill-whole-line t)
 '(mouse-drag-copy-region nil)  ; stops selection with a mouse being immediately injected to the kill ring
 '(x-select-enable-primary nil)  ; stops killing/yanking interacting with primary X11 selection
 '(x-select-enable-clipboard t))  ; makes killing/yanking interact with clipboard X11 selection

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; miscs
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

(setq frame-title-format (list "%b - " (getenv "USERNAME") "@" system-name (getenv "USERDOMAIN")))
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(fset 'yes-or-no-p 'y-or-n-p)
(when (fboundp 'global-font-lock-mode) (global-font-lock-mode t))
(when (fboundp 'global-auto-revert-mode) (global-auto-revert-mode t))

(iswitchb-mode 1)
(display-time)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; backup and auto-saves
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Enable backup files
(setq delete-old-versions t
      kept-old-versions 1
      kept-new-versions 3
      version-control t)
(setq backup-directory-alist '((".*" . "~/.emacs.d/backup")))
                                  
; Auto-saves
(defvar autosave-dir "~/.emacs.d/auto-saves/")
(make-directory autosave-dir t)
(defun auto-save-file-name-p (filename)
  (string-match "^#.*#$" (file-name-nondirectory filename)))
(defun make-auto-save-file-name ()
  (concat autosave-dir
	  (if buffer-file-name
	      (concat "#" (file-name-nondirectory buffer-file-name) "#")
	    (expand-file-name
	     (concat "#%" (buffer-name) "#")))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Key Bindings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Global key-bindings
(global-set-key [f5] 'occur)
;(global-set-key [f11] 'longlines-mode)
(global-set-key [f11] 'toggle-truncate-lines)
(global-set-key [f12] 'menu-bar-mode)
(global-set-key "\M-]" 'other-window)
(global-set-key "\M-[" '(lambda () (interactive) (other-window -1)))
(global-set-key [?\C-x?\C-b] 'bs-show)

(define-key global-map "\C-h" 'backward-delete-char)
(define-key global-map "\C-_" 'help-command)
(define-key global-map "\M-h" 'backward-kill-word)
(setq help-char (string-to-char "\C-_"))
(setq search-delete-char (string-to-char "\C-h"))

; Custom Key Binding
(defun scroll-up-one ( ) "Scroll up 1 line." (interactive) (scroll-up (prefix-numeric-value current-prefix-arg)))
(defun scroll-down-one ( ) "Scroll down 1 line." (interactive) (scroll-down (prefix-numeric-value current-prefix-arg)))
(define-key global-map [C-down] 'scroll-up-one)
(define-key global-map [C-up] 'scroll-down-one)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Chinese Calendar
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq chinese-calendar-celestial-stem
      ["甲" "乙" "丙" "丁" "戊" "己" "庚" "辛" "壬" "癸"]
      chinese-calendar-terrestrial-branch
      ["子" "丑" "寅" "卯" "辰" "巳" "午" "未" "申" "酉" "戌" "亥"])

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Auto-run / hooks
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Fix sth. for shell at Linux
(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Auto-mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'auto-mode-alist '("\\.as$" . c-mode))
(add-to-list 'auto-mode-alist '("README" . text-mode))
(add-to-list 'auto-mode-alist '("\\.xml$" . nxml-mode))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Color
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;(require 'color-theme)
;(setq color-theme-is-global t)
;(color-theme-robin-hood)
;(color-theme-dark-laptop)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
