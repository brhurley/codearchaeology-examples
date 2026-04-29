; Local Bindings and Type Predicates

;; let - all bindings are independent
(let ((x 10)
      (y 20))
  (display "Sum: ") (display (+ x y)) (newline))

;; let* - each binding can reference earlier ones
(let* ((base 5)
       (squared (* base base))
       (cubed (* squared base)))
  (display "5^2 = ") (display squared) (newline)
  (display "5^3 = ") (display cubed) (newline))

;; Type predicates
(display (number? 42)) (newline)
(display (string? "hello")) (newline)
(display (symbol? 'foo)) (newline)
(display (boolean? #f)) (newline)
(display (char? #\a)) (newline)
(display (pair? '(1 2 3))) (newline)
(display (null? '())) (newline)
(display (procedure? display)) (newline)

;; Type conversions
(display (number->string 42)) (newline)
(display (number->string 255 16)) (newline)
(display (string->number "100")) (newline)
(display (string->number "ff" 16)) (newline)
(display (symbol->string 'lambda)) (newline)
(display (char->integer #\A)) (newline)
(display (integer->char 97)) (newline)
