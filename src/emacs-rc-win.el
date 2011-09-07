;;;; TODO
;(if (eq system-type `window-nt"
;   dosth...
;)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; customized browser
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "C:\\Program Files\\Mozilla Firefox\\firefox.exe")
      ;;c:\\workspace\\opt\\xulrunner\\xulrunner.exe"
      ;;browse-url-generic-args '("C:\\workspace\\opt\\conkeror\\application.ini"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; tramp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'tramp)
(setq tramp-default-method "plink")
(setq tramp-auto-save-directory "c:\\temp\\tramp")
(setq tramp-default-user "root")
;;(add-to-list 'tramp-default-method-alist '("" "john" "ssh"))
;;(add-to-list tramp-default-proxies-alist '(".*" "\`root\'" "/ssh:%h:"))

(shell)
