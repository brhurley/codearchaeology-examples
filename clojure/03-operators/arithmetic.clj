;; Basic arithmetic - all functions are variadic
(println "Addition:        " (+ 2 3 4))
(println "Subtraction:     " (- 20 5 3))
(println "Multiplication:  " (* 2 3 4))
(println "Division:        " (/ 20 4))

;; Integer vs ratio division
(println "Ratio result:    " (/ 10 3))      ; => 10/3 (exact ratio)
(println "Float division:  " (/ 10.0 3))    ; => 3.333...
(println "Integer quotient:" (quot 10 3))   ; => 3
(println "Remainder:       " (rem 10 3))    ; => 1
(println "Modulo:          " (mod -7 3))    ; => 2 (mod differs from rem for negatives)

;; Exponentiation and absolute value
(println "Power 2^10:      " (Math/pow 2 10))
(println "Absolute value:  " (abs -42))

;; Increment and decrement helpers
(println "Increment:       " (inc 5))
(println "Decrement:       " (dec 5))

;; Min and max are also variadic
(println "Min of values:   " (min 3 1 4 1 5 9 2 6))
(println "Max of values:   " (max 3 1 4 1 5 9 2 6))
