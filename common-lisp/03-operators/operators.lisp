;; Operators in Common Lisp - every operator is just a function call

;; --- Arithmetic ---
(format t "Arithmetic:~%")
(format t "  (+ 10 5)     = ~a~%" (+ 10 5))
(format t "  (- 10 5)     = ~a~%" (- 10 5))
(format t "  (* 10 5)     = ~a~%" (* 10 5))
(format t "  (/ 10 5)     = ~a~%" (/ 10 5))
(format t "  (/ 10 3)     = ~a~%" (/ 10 3))      ; exact rational, not 3.333
(format t "  (mod 10 3)   = ~a~%" (mod 10 3))
(format t "  (rem -10 3)  = ~a~%" (rem -10 3))   ; rem and mod differ on negatives
(format t "  (mod -10 3)  = ~a~%" (mod -10 3))
(format t "  (expt 2 10)  = ~a~%" (expt 2 10))
(format t "  (sqrt 16)    = ~a~%" (sqrt 16))
(format t "  (abs -7)     = ~a~%" (abs -7))
(format t "  (1+ 41)      = ~a~%" (1+ 41))       ; increment-by-one shorthand
(format t "  (1- 43)      = ~a~%" (1- 43))       ; decrement-by-one shorthand

;; --- Variadic arithmetic ---
(format t "~%Variadic arithmetic (any number of arguments):~%")
(format t "  (+ 1 2 3 4 5)   = ~a~%" (+ 1 2 3 4 5))
(format t "  (* 1 2 3 4 5)   = ~a~%" (* 1 2 3 4 5))
(format t "  (+)             = ~a~%" (+))         ; identity: 0
(format t "  (*)             = ~a~%" (*))         ; identity: 1
(format t "  (- 100 10 5 2)  = ~a~%" (- 100 10 5 2))

;; --- Comparison (numeric) ---
(format t "~%Comparison:~%")
(format t "  (= 5 5)         = ~a~%" (= 5 5))
(format t "  (/= 5 6)        = ~a~%" (/= 5 6))
(format t "  (< 1 2 3)       = ~a~%" (< 1 2 3))   ; chained: 1 < 2 < 3
(format t "  (< 1 3 2)       = ~a~%" (< 1 3 2))   ; not strictly increasing
(format t "  (> 3 2 1)       = ~a~%" (> 3 2 1))
(format t "  (<= 1 1 2)      = ~a~%" (<= 1 1 2))
(format t "  (zerop 0)       = ~a~%" (zerop 0))
(format t "  (plusp -3)      = ~a~%" (plusp -3))
(format t "  (evenp 4)       = ~a~%" (evenp 4))

;; --- Logical / boolean ---
(format t "~%Logical:~%")
(format t "  (and t t nil)   = ~a~%" (and t t nil))
(format t "  (and 1 2 3)     = ~a~%" (and 1 2 3))   ; returns last truthy value
(format t "  (or nil nil 42) = ~a~%" (or nil nil 42))
(format t "  (or nil nil)    = ~a~%" (or nil nil))
(format t "  (not nil)       = ~a~%" (not nil))
(format t "  (not 0)         = ~a~%" (not 0))       ; only NIL is false; 0 is true!
