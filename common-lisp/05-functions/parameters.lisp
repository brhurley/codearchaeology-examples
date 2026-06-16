;; &optional parameters can supply a default value
(defun greet (name &optional (greeting "Hello"))
  (format t "~a, ~a!~%" greeting name))

;; &key gives named (keyword) arguments, each with an optional default
(defun make-coffee (&key (size "medium") (shots 1) decaf)
  (format t "~a coffee with ~a shot(s)~a~%"
          size shots (if decaf " (decaf)" "")))

;; &rest gathers any remaining arguments into a list
(defun sum-all (&rest numbers)
  (apply #'+ numbers))

(greet "Ada")
(greet "Ada" "Hi")
(make-coffee)
(make-coffee :size "large" :shots 2)
(make-coffee :decaf t)
(format t "sum-all = ~a~%" (sum-all 1 2 3 4 5))
