;; if - takes a test, a then-form, and an optional else-form
(let ((x 10))
  (if (> x 0)
      (format t "~a is positive~%" x)
      (format t "~a is not positive~%" x)))

;; if is an expression - it returns a value (acts like a ternary)
(let* ((n 7)
       (parity (if (evenp n) "even" "odd")))
  (format t "~a is ~a~%" n parity))

;; when - run the body only when the test is true (no else branch)
(let ((temp 95))
  (when (> temp 90)
    (format t "It's hot! Temperature is ~a~%" temp)))

;; unless - run the body only when the test is false
(let ((logged-in nil))
  (unless logged-in
    (format t "Please log in~%")))

;; cond - multi-way branching, like if/else-if/else
(let ((score 85))
  (cond ((>= score 90) (format t "Grade: A~%"))
        ((>= score 80) (format t "Grade: B~%"))
        ((>= score 70) (format t "Grade: C~%"))
        (t             (format t "Grade: F~%"))))

;; case - dispatch on a single value, like switch
(let ((day 3))
  (case day
    (1 (format t "Monday~%"))
    (2 (format t "Tuesday~%"))
    (3 (format t "Wednesday~%"))
    (otherwise (format t "Another day~%"))))
