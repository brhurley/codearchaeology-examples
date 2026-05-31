;; Classic recursion: factorial
(defun factorial (n)
  (if (<= n 1)
      1                              ; base case
      (* n (factorial (- n 1)))))    ; recursive case

;; Recursion as a loop: count down and print each value
(defun countdown (n)
  (when (> n 0)
    (format t "~a " n)
    (countdown (- n 1))))

;; Recursion over a list using first/rest
(defun sum-list (lst)
  (if (null lst)
      0                                       ; empty list sums to 0
      (+ (first lst) (sum-list (rest lst))))) ; head + sum of tail

(format t "5! = ~a~%" (factorial 5))
(format t "Countdown: ")
(countdown 5)
(format t "~%")
(format t "Sum of (1 2 3 4 5) = ~a~%" (sum-list '(1 2 3 4 5)))
