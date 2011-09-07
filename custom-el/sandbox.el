;;; doing sth repeatly
(let ((insert "insert into table (col1,col2) values "))
  (message insert)
  (dotimes (i 4)
    (dotimes (j 3)
      (message "(%d, %d)," i j))))
