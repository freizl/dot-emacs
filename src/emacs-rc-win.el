;;;; TODO
;(if (eq system-type `window-nt"
;   dosth...
;)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; customized browser
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "C:\\Users\\haiswu\\AppData\\Local\\Google\\Chrome\\Application\\chrome.exe")
;;      browse-url-generic-program "C:\\Program Files\\Mozilla Firefox\\firefox.exe")
      ;;c:\\workspace\\opt\\xulrunner\\xulrunner.exe"
      ;;browse-url-generic-args '("C:\\workspace\\opt\\conkeror\\application.ini"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; tramp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'tramp)
(setq tramp-default-method "plink")
(setq tramp-auto-save-directory "c:\\temp\\tramp")
(setq tramp-default-user "root")

;;; open remote home via /ssh::~
;(setq tramp-default-user "swu"
;     tramp-default-host "dev-01.com")

;;; altertive approach as /$a3dev~
;(setenv "a3dev" "/ssh:swu@dev-01.com:")

(global-set-key (kbd "C-c SPC") 'set-mark-command)
(global-set-key (kbd "C-,") 'set-mark-command)

;;; js-comint
(setq inferior-js-program-command "java -jar C:/Users/haiswu/Downloads/rhino1_7R4/js.jar")

(shell)

