;; `if` takes exactly three parts: (if test then else)
;; It is an EXPRESSION - it returns a value, so there is no ternary operator.
(define (classify n)
  (if (> n 0)
      "positive"
      (if (< n 0)
          "negative"
          "zero")))

(display (classify 5))   (newline)
(display (classify -3))  (newline)
(display (classify 0))   (newline)

;; `cond` replaces a chain of nested ifs with clean clauses.
;; Each clause is (test result ...); `else` is the catch-all.
(define (grade score)
  (cond ((>= score 90) "A")
        ((>= score 80) "B")
        ((>= score 70) "C")
        (else          "F")))

(display (grade 95)) (newline)
(display (grade 82)) (newline)
(display (grade 60)) (newline)

;; `case` dispatches on a single value, comparing with eqv?.
;; Each clause lists the matching keys in parentheses.
(define (day-type day)
  (case day
    ((sat sun)             "weekend")
    ((mon tue wed thu fri) "weekday")
    (else                  "unknown")))

(display (day-type 'sat)) (newline)
(display (day-type 'wed)) (newline)

;; `when` and `unless` are one-armed conditionals for side effects.
;; They run their body (an implicit begin) only when the test passes.
(define (announce n)
  (when (even? n)
    (display n)
    (display " is even")
    (newline))
  (unless (even? n)
    (display n)
    (display " is odd")
    (newline)))

(announce 4)
(announce 7)
