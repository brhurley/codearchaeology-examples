;; dotimes - iterate from 0 up to n-1
(format t "Counting with dotimes:~%")
(dotimes (i 5)
  (format t "  i = ~a~%" i))

;; dolist - iterate over the elements of a list
(format t "Iterating with dolist:~%")
(dolist (fruit '("apple" "banana" "cherry"))
  (format t "  ~a~%" fruit))

;; loop - accumulate a sum
(format t "Summing with loop:~%")
(let ((total (loop for n from 1 to 5 sum n)))
  (format t "  Sum 1..5 = ~a~%" total))

;; loop - collect results into a new list
(let ((squares (loop for n from 1 to 5 collect (* n n))))
  (format t "  Squares: ~a~%" squares))

;; do - general iteration with an explicit step and stop condition
(format t "Countdown with do:~%")
(do ((i 3 (- i 1)))   ; bind i = 3, step by subtracting 1 each pass
    ((zerop i))        ; stop when i reaches 0
  (format t "  ~a~%" i))
