;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; TODO
"""
; auto-fill-mode?, break long line at word
; what's fset?
; diff between setq and setq-default? find it in Customerize section
  ;;; set v.s. setq, find at Emacs Lisp introduction section #1.9

; tab complete in shell mode / or env variable setting in eshell
  ;;; use term instead, but cant start term in Windows
  ;;;;;; if eshell, probably update LISP Var PATH. HOW? getenv/setenv
  ;;; if eshell, additional / was prefix into path while doing compile, can be resolved?

; outgoing email config at Windows/Linux

; abbrev-mode
"""

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; dired
;;  % d REGEXP <RET>
;;  % m REGEXP <RET>
;;  % g REGEXP <RET>
;;  M-{
;;  M-}

;;;; Moving over Subdirecoty
;; C-M-n / C-M-p, C-M-u / C-M-d
;;;; Subdirectory
;; i , C-u i; C-u k; l, C-u l
;;;; Hiding Subdirecotyr
;; $, M-$
;;;; Refresh the Dired buffer using SWITCHES
;; `C-u s SWITCHES <RET>'

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Macro
;; Save macro                  name-last-kbd-macro ; then insert-kbd-macro
;; call macro                  call-last-kbd-macro (C-x e)
;; plays macro util rings the bell, C-u 0 C-x e

;;;;;;;;;;;;; Search
;; C-s C-w
;; C-w C-y
;; C-w M-y
;; C-s RETURN searchstr RETURN
;; C-s RETURN C-w searchstr RETURN

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Funs / Vars
;; transpose                   C-t, M-t, C-x C-t
;; count-lines-region          M-=
;; mark-whole-buffer           C-x h
;; mark-page                   C-x C-p
;; repeat                      C-x z
;; backward/forward sentence   M-a / M-e
;; goto-line                   M-g M-g
;; goto-char
;; beginning-of-buffer         M-<
;; end-of-buffer               M->
;; browser-url <RET> URL <RET>
;; transpose letter            C-t
;; transpose words             M-t
;; downcase word               M-l
;; upcase word                 M-u
;; downcase region             C-x C-l
;; upcase region               C-x C-u
;; Insert comments indent-for-comment    M-;
;; Evaluate a LISP exp         M-:
;; resume Emacs                %emacs (in most of common shells)
;; prev/next buffer            C-x left/right
;; kill through next occurrence of char      M-z char
;; kill sentence               M-k
;; auto re-visit the buffer    M-x auto-revert-mode and M-x auto-revert-tail-mode
;;                             http://www.emacswiki.org/emacs-en/RevertBuffer
;; Menu/Buffer Menu            C-Right Click; C-Left Click
;; Emacs Lisp Function Desc    C-h f pop-to-buffer
;; join to previous line       M-^
;; Save session                desktop-save, desktop-revert, desktop-clear, desktop-change-dir
;; Save seesion (older version config) (desktop-load-default) (desktop-read)
;; incremental search forward, refer to help of key <C-s>
;;                             C-s C-w, C-s C-y, C-s M-y; M-c, M-r, M-e
;; Frames                      C-x +
;; Blank Lines                 C-o, C-x C-o
;; Active Menu Bar             M-`
;; match brackets, equals % in VIM          forward-sexp / backward-sexp : C-M-f / C-M-b
;; fill paragraphs             M-q
;; fill region
;; set-default-font and use TAB to get font list
;; delete-matching-lines
;; delete-non-matching-lines
;; flush-lines
;; keep-lines
;; search/replace newline, instead of (\n) to use C-q C-j in the minibuffer
;; read only buffer            C-x C-q

;; insert-file                 C-x i
;; find-alternate-file         C-x C-v
;; set-fill-column             C-x f
;; M-x customize-face
;; M-x list-colors-display
;; buffer-menu                 C-x C-b

;; align-regexp
;; occurs                      M-x occur ; M-s o
;; butterfly ??
;; re-builder
;; rgrep
;; follow-mode
;; move point 3 words forward: hold down Meta and type 3f.  
;; Let you go through all the history of copy and paste.    C-y M-y
;;
;; delete-trailing-whitespace

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; ELISP

;; eval-print-last-sexp        C-j (at scratch buffer)
;; byte-recompile-directory

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; nXML mode
;; indent-region C-M-\
;; M-q
;; C-M-u, C-M-d
;; C-RET
;; C-c C-f, C-c C-i / C-c C-b
;; C-c C-x : Inserts an XML processing instruction at the top of your file
;;
;; M-C-f        Move forward over tag.
;; M-C-b        Move backward over tag.
;; M-C-n        Move the cursor to the end of the next element.
;; M-C-p        Move the cursor before the previous element.
;; M-C-d        Move the cursor to the next included element after point
;; M-C-u        Move the cursor to a position just before the start tag of the element containing point
;; C-c C-o C-d  Hide the children of the current element, as in emacs outline-mode.
;; C-c C-o C-s  Reverses the action of C-c C-o C-d, revealing the children of the current element.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Shell Mode
;; default init scripts (Windows, it is BAT scripts though file ext is 'exe')  ~/.emacs_cmdproxy.exe

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; tutorial
;; 8.2 numeric argument  M-1,M-2,...; C-u
;; 8.9 Cursor Position
;; 8.11 Repeat a Command C-x z
;; 9.3 Completion        SPC, TAB

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Others
; hi-lock-mode
; follow-mode !!
; ioccur
; whitespace
; adaptive-wrap-prefix-mode
; hl-line
; mouse-avoidance-mode
; nlinum-mode
