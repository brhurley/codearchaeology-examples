; Variables and Types in Scheme

;; Top-level bindings with define
(define language "Scheme")
(define year 1975)
(define pi 3.14159)
(define elegant? #t)
(define creator 'sussman)

(display "Language: ") (display language) (newline)
(display "Created: ") (display year) (newline)
(display "Pi: ") (display pi) (newline)
(display "Elegant? ") (display elegant?) (newline)
(display "Creator symbol: ") (display creator) (newline)

;; Characters - written with the #\ prefix
(define initial #\S)
(display "Initial: ") (display initial) (newline)

;; Lists - a fundamental Scheme data structure
(define langs '(scheme lisp racket))
(display "Languages: ") (display langs) (newline)

;; Local bindings with let
(let ((radius 5)
      (pi-approx 3.14159))
  (display "Circle area: ")
  (display (* pi-approx radius radius))
  (newline))
