(add-to-list 'load-path (concat depends-dir "twittering-mode-cn"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; twittering mode
;;;; https://github.com/xwl/twittering-mode.git
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'twittering-mode)
(setq twittering-icon-mode t                ; Show icons
      twittering-use-master-password t
      twittering-allow-insecure-server-cert t
      twittering-oauth-use-ssl nil
      twittering-use-ssl nil
      twittering-enable-unread-status-notifier t
      twittering-timer-interval 600         ; Update your timeline each 300 seconds (5 minutes)
      twittering-initial-timeline-spec-string '(":home@sina") ; ":home@douban"
      twittering-url-show-status nil)        ; Keeps the echo area from showing all the http processes

(define-key twittering-mode-map (kbd "C-c m") 'twittering-native-retweet)
