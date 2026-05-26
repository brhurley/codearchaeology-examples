;; = compares numbers (note: 2 and 2.0 are numerically equal)
(display (= 2 2.0))
(newline)

;; eqv? - identity, reliable for numbers, chars, and symbols
(display (eqv? 'a 'a))
(newline)
(display (eqv? 2 2))
(newline)

;; equal? - deep structural equality (lists, strings, vectors)
(display (equal? '(1 2 3) '(1 2 3)))
(newline)
(display (equal? "hello" "hello"))
(newline)

;; eq? - pointer identity; always reliable for symbols
(display (eq? 'foo 'foo))
(newline)

;; Dedicated string comparison procedures
(display (string=? "abc" "abc"))
(newline)
(display (string<? "abc" "abd"))   ; lexicographic ordering
(newline)

;; String "concatenation" is a procedure, not an operator
(display (string-append "Hello, " "World!"))
(newline)
