;; Classic recursive factorial
(defun factorial (n)
  (if (<= n 1)
      1
      (* n (factorial (1- n)))))

;; Recursion over a list to compute its length
(defun my-length (lst)
  (if (null lst)
      0
      (1+ (my-length (rest lst)))))

;; A function can return more than one value with VALUES
(defun divmod (a b)
  (values (floor a b) (mod a b)))

(format t "10! = ~a~%" (factorial 10))
(format t "length = ~a~%" (my-length '(a b c d)))

;; MULTIPLE-VALUE-BIND receives several return values at once
(multiple-value-bind (q r) (divmod 17 5)
  (format t "17 / 5 = ~a remainder ~a~%" q r))
