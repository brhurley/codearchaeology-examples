;;; The Common Lisp Numeric Tower

;; Integers: arbitrary precision, no overflow
(let ((big (* 1000000000000 1000000000000)))
  (format t "Big integer: ~a~%" big)
  (format t "Type: ~a~%" (type-of big)))

;; Rationals: exact fractions
(let ((one-third (/ 1 3))
      (two-fifths (/ 2 5)))
  (format t "1/3 = ~a~%" one-third)
  (format t "2/5 = ~a~%" two-fifths)
  (format t "1/3 + 2/5 = ~a~%" (+ one-third two-fifths))
  (format t "Type of 1/3: ~a~%" (type-of one-third)))

;; Floats: single and double precision
(let ((sf 3.14)          ; single-float (default on most implementations)
      (df 3.14d0))       ; double-float (d0 suffix)
  (format t "Single float: ~a, type: ~a~%" sf (type-of sf))
  (format t "Double float: ~a, type: ~a~%" df (type-of df)))

;; Complex numbers
(let ((c1 #c(3 4))       ; complex with integer parts
      (c2 #c(1.0 2.0)))  ; complex with float parts
  (format t "Complex: ~a, magnitude: ~,4f~%" c1 (abs c1))
  (format t "Complex: ~a~%" c2)
  (format t "Real part: ~a, Imaginary part: ~a~%" (realpart c1) (imagpart c1)))

;; Type predicates
(format t "~%Type checks:~%")
(format t "42 is integer? ~a~%" (integerp 42))
(format t "3.14 is float? ~a~%" (floatp 3.14))
(format t "1/3 is rational? ~a~%" (rationalp 1/3))
(format t "42 is number? ~a~%" (numberp 42))
