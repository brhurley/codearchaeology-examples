;; Arithmetic procedures use prefix notation: (op operand ...)
(display (+ 3 4))        ; addition
(newline)
(display (- 10 3))       ; subtraction
(newline)
(display (* 6 7))        ; multiplication
(newline)
(display (/ 20 4))       ; division (divides evenly -> exact integer)
(newline)

;; They are variadic - any number of arguments
(display (+ 1 2 3 4 5))
(newline)
(display (* 2 3 4))
(newline)

;; A single argument has special meaning
(display (- 5))          ; negation
(newline)
(display (/ 4))          ; reciprocal
(newline)

;; The numeric tower: exact rational arithmetic, no rounding
(display (/ 1 3))        ; stays exact as a fraction
(newline)
(display (+ 1/2 1/4))    ; rational literals work too
(newline)

;; Integer division procedures
(display (quotient 17 5))   ; truncated quotient
(newline)
(display (remainder 17 5))  ; remainder (sign follows dividend)
(newline)
(display (modulo -7 3))     ; modulo (sign follows divisor)
(newline)

;; Other common numeric procedures
(display (expt 2 10))    ; exponentiation
(newline)
(display (sqrt 16))      ; exact when the result is exact
(newline)
(display (abs -42))      ; absolute value
(newline)
(display (max 3 7 2 9 1))
(newline)
(display (min 3 7 2 9 1))
(newline)
