;; higher_order.scm — Functions as values

;; A function that takes another function as an argument
(define (apply-twice f x)
  (f (f x)))

;; Function composition: returns a brand new function
(define (compose f g)
  (lambda (x) (f (g x))))

(define (double x) (* x 2))
(define (inc x) (+ x 1))

;; Build a new function out of two existing ones
(define double-then-inc (compose inc double))

(define nums '(1 2 3 4 5))

;; Pass a named function as an argument
(display "apply-twice inc 0 = ")
(display (apply-twice inc 0))
(newline)

;; Use the composed function
(display "double-then-inc 5 = ")
(display (double-then-inc 5))
(newline)

;; map applies a function to every element, returning a new list
(display "map double = ")
(display (map double nums))
(newline)

;; filter keeps elements for which the predicate returns #t
(display "filter even? = ")
(display (filter even? nums))
(newline)

;; apply spreads a list as arguments — here, summing the list
(display "sum (apply +) = ")
(display (apply + nums))
(newline)
