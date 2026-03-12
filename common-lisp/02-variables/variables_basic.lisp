;;; Variables and Bindings in Common Lisp

;; let introduces lexical variables
(let ((x 42)
      (name "Common Lisp")
      (pi-approx 3.14159))
  (format t "x = ~a~%" x)
  (format t "name = ~a~%" name)
  (format t "pi ≈ ~a~%" pi-approx))

;; let* allows sequential bindings (each sees the previous)
(let* ((base 10)
       (height 5)
       (area (* base height)))
  (format t "base = ~a, height = ~a, area = ~a~%" base height area))

;; Variables can hold any type - they are untyped containers
(let ((value 100))
  (format t "value is ~a, type: ~a~%" value (type-of value))
  (setf value "now a string")
  (format t "value is ~a, type: ~a~%" value (type-of value))
  (setf value '(1 2 3))
  (format t "value is ~a, type: ~a~%" value (type-of value)))
