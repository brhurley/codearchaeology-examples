;; Basic function definition with defun
(defun square (x)
  "Return the square of X."   ; an optional docstring
  (* x x))

;; A function with multiple parameters
(defun add (a b)
  (+ a b))

;; The value of the last expression is returned automatically -
;; there is no 'return' statement in idiomatic Common Lisp
(defun describe-number (n)
  (if (evenp n)
      "even"
      "odd"))

(format t "square of 5 = ~a~%" (square 5))
(format t "add 3 and 4 = ~a~%" (add 3 4))
(format t "7 is ~a~%" (describe-number 7))
