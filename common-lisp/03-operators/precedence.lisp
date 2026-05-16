;; In infix languages: 2 + 3 * 4 = 14 because * binds tighter than +.
;; In Common Lisp, there is no precedence - parentheses ARE the grouping.

(format t "(+ 2 (* 3 4))         = ~a~%" (+ 2 (* 3 4)))   ; "2 + 3 * 4"
(format t "(* (+ 2 3) 4)         = ~a~%" (* (+ 2 3) 4))   ; "(2 + 3) * 4"

;; Comparison chained with logical operators
(let ((x 7))
  (format t "x in [1, 10]?  ~a~%"
          (and (<= 1 x) (<= x 10))))

;; The same idea more compactly - <= is variadic
(let ((x 7))
  (format t "x in [1, 10]?  ~a~%" (<= 1 x 10)))

;; Mixing arithmetic and comparison
(format t "(zerop (mod 100 4))   = ~a~%" (zerop (mod 100 4)))
(format t "(> (* 6 7) 40)        = ~a~%" (> (* 6 7) 40))
