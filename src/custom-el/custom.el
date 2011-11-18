;;;(require 'cl); for set-difference and loop

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; goes backward to a windows quickly
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun window-number-list ()
  "simply calculate how many windows in current frame."
  (length (window-list (selected-frame) 1)))

(defun forward-window (arg)
  (interactive "p")
  (other-window arg))

(defun backward-window (arg)
  (interactive "p")
  (other-window -1)) ;(1- (window-number-list))))

(global-set-key "\M-]"     'forward-window)
(global-set-key "\M-["     'backward-window)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun hello (number)
     "Hello World and you can call it via M-x hello."
     (interactive "p")
     (message "Hello Hangzhou.. %d" number))

(defun hello2 (cmd, buffer)
     "Hello World and you can call it via M-x hello."
     (interactive "saction:\nbfile")
     (message "Hello Hangzhou.. %s,%s" cmd buffer))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; deploy properties switch
(defun prop-switch (number)
  ""
  (interactive "p")
  (move-beginning-of-line 1)
 ; (let ((first-char (string (delete-char 1)))
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; TODO how load desktop session of anf by default; having issue if call this function in .emacs init file.

(defun local-desktop (&optional dirname)
  (interactive "")
  (desktop-change-dir "C:/repos/emacs"))

(defun anf-desktop (&optional dirname)
  (interactive "")
  (desktop-change-dir "C:/ANF_Workspace/"))

(defun fw11g-desktop (&optional dirname)
  (interactive "")
  (desktop-change-dir "C:/Workspace/FW11g/"))

(defun osgi-desktop (&optional dirname)
  (interactive "")
  (desktop-change-dir "C:/Workspace/OSGi/"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Hook testing
(defun foo ()
  (message "foo function defined to emacs-list-mode hook"))
(defun bar ()
  (message "bar function defined to emacs-list-mode hook"))
(add-hook 'emacs-lisp-mode-hook 'foo)
;(add-hook 'emacs-lisp-mode-hook 'bar)
