;; functions.scm — Functions in Scheme

;; Basic definition: (define (name params...) body...)
(define (square x)
  (* x x))

;; Multiple parameters, calling other functions
(define (sum-of-squares a b)
  (+ (square a) (square b)))

;; Anonymous function (lambda) bound to a name with define
;; (define (cube x) ...) is just sugar for this form
(define cube
  (lambda (x) (* x x x)))

;; "Optional" arguments via a rest parameter (the dotted tail)
;; rest collects any extra arguments into a list
(define (greet name . rest)
  (let ((greeting (if (null? rest) "Hello" (car rest))))
    (string-append greeting ", " name "!")))

;; Closure: make-adder returns a lambda that remembers n
;; This is lexical scoping in action — n stays alive in the returned function
(define (make-adder n)
  (lambda (x) (+ x n)))

(define add-10 (make-adder 10))

;; Recursion: the classic factorial (naive version)
(define (factorial n)
  (if (= n 0)
      1
      (* n (factorial (- n 1)))))

;; Tail recursion with a named let — the accumulator carries the result
;; Scheme guarantees this runs in constant stack space (proper tail calls)
(define (factorial-iter n)
  (let loop ((i n) (acc 1))
    (if (= i 0)
        acc
        (loop (- i 1) (* acc i)))))

;; Exercise every procedure
(display "square 6 = ") (display (square 6)) (newline)
(display "sum-of-squares 3 4 = ") (display (sum-of-squares 3 4)) (newline)
(display "cube 3 = ") (display (cube 3)) (newline)
(display (greet "World")) (newline)
(display (greet "Scheme" "Welcome")) (newline)
(display "add-10 5 = ") (display (add-10 5)) (newline)
(display "factorial 5 = ") (display (factorial 5)) (newline)
(display "factorial-iter 10 = ") (display (factorial-iter 10)) (newline)
