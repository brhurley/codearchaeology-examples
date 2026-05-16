;; Common Lisp uses defvar/defparameter for top-level bindings
;; and setf as the universal "place-setter" operator.

(defparameter *counter* 0)
(format t "Initial *counter* = ~a~%" *counter*)

;; setf assigns a new value to a place
(setf *counter* 10)
(format t "After (setf *counter* 10): ~a~%" *counter*)

;; incf / decf modify in place by an optional delta
(incf *counter*)        ; default delta is 1
(format t "After (incf *counter*):    ~a~%" *counter*)

(incf *counter* 5)
(format t "After (incf *counter* 5):  ~a~%" *counter*)

(decf *counter* 4)
(format t "After (decf *counter* 4):  ~a~%" *counter*)

;; setf works on any "place" - including array elements and hash keys
(let ((vec (vector 10 20 30)))
  (setf (aref vec 1) 99)
  (format t "Vector after (setf (aref vec 1) 99): ~a~%" vec))

;; Local bindings with let - no mutation needed
(let* ((a 3)
       (b 4)
       (hypotenuse (sqrt (+ (* a a) (* b b)))))
  (format t "Hypotenuse of (~a, ~a) = ~a~%" a b hypotenuse))
