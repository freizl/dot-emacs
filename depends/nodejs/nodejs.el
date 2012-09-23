(defun my-node-shell ()
  (interactive)
  (pop-to-buffer (make-comint "Node Shell" "node" nil ".\\node-in-node.js")))
