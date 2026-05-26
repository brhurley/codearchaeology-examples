;; Scheme has NO precedence rules - parentheses decide everything

;; infix (2 + 3) * 4  ->
(display (* (+ 2 3) 4))
(newline)

;; infix 2 + 3 * 4  ->
(display (+ 2 (* 3 4)))
(newline)

;; infix ((10 - 2) / 4) + (3 * 5)  ->
(display (+ (/ (- 10 2) 4) (* 3 5)))
(newline)

;; Mixing arithmetic and comparison: 3 < 6
(display (< (+ 1 2) (* 2 3)))
(newline)

;; Combining comparison and logical operators
(display (and (> 5 3) (< 2 10)))
(newline)
