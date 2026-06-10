;; `and` stops at the first #f. Here it guards a division:
;; if b is 0, the (/ a b) is never evaluated.
(define (safe-divide a b)
  (and (not (= b 0))
       (/ a b)))

(display (safe-divide 10 2)) (newline)   ; -> 5
(display (safe-divide 10 0)) (newline)   ; -> #f

;; `or` returns its first truthy value - ideal for default fallbacks.
(define (greet name)
  (string-append "Hello, " (or name "stranger")))

(display (greet "Ada")) (newline)
(display (greet #f))    (newline)

;; Because `if` is an expression, it doubles as a ternary.
(define (max-of a b)
  (if (> a b) a b))

(display (max-of 3 9)) (newline)
