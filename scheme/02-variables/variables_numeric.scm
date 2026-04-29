; Scheme's Numeric Tower

;; Exact integers - arbitrary precision
(define big 1000000000000)
(display "Big integer: ") (display big) (newline)

;; Exact rationals - unique to the Lisp numeric tower
(define one-third 1/3)
(display "One third: ") (display one-third) (newline)
(display "1/3 + 1/6 = ") (display (+ 1/3 1/6)) (newline)

;; Inexact floats (IEEE 754)
(define approx-e 2.71828)
(display "Approx e: ") (display approx-e) (newline)

;; Exactness predicates
(display "1/3 exact? ") (display (exact? one-third)) (newline)
(display "2.71828 exact? ") (display (exact? approx-e)) (newline)

;; Convert exact to inexact when you need a decimal representation
(display "1/3 as float: ") (display (exact->inexact one-third)) (newline)
