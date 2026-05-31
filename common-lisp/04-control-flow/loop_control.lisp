;; Early exit with return - stop at the first multiple of 7
(format t "Searching for first multiple of 7:~%")
(dotimes (n 50)
  (when (and (> n 0) (zerop (mod n 7)))
    (format t "  Found: ~a~%" n)
    (return)))            ; leave the dotimes immediately

;; A bare loop runs forever until you return out of it
(format t "Loop until a condition:~%")
(let ((i 0))
  (loop
    (when (>= i 3) (return))
    (format t "  i = ~a~%" i)
    (incf i)))            ; incf increments i in place

;; "continue"-style skipping: guard the body instead of jumping
(format t "Odd numbers only:~%")
(dotimes (n 6)
  (unless (evenp n)
    (format t "  ~a~%" n)))
