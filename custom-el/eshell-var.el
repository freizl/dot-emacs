(defconst add-to-path-y t)
(defconst add-to-path-n nil)

;;;(env-var-name, env-var-value, bin-path-relative-to-home, add-to-path-or-not)
(defconst variable-to-env-struct
  (list (list "PYTHON_HOME" "C:/Python25" "" add-to-path-y)
        (list "JAVA6_HOME" "C:/bea-fusion-11g/jdk160_11/" "bin" add-to-path-n)
        (list "MAVEN_HOME" "C:/Workspace/apache-maven-2.2.0/" "bin" add-to-path-y)))

(defun get-variable-name (variable-to-env)
  (first variable-to-env))

(defun get-variable-value (variable-to-env)
  (second variable-to-env))

(defun get-bin-path (variable-to-env)
  (concat (second variable-to-env) (third variable-to-env) ";"))

(defun add-to-path-p (variable-to-env)
  (fourth variable-to-env))

(defun add-to-path (all-variable-list)
  (map 'list
       (lambda (variable-pair)
         (when (add-to-path-p variable-pair)
           (setenv (get-variable-name variable-pair) (get-variable-name variable-pair))
           (setenv "PATH" (concat (get-bin-path variable-pair) (getenv "PATH")))))
       all-variable-list))

(add-to-path variable-to-env-struct)
