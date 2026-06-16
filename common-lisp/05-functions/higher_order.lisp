;; Anonymous functions are created with LAMBDA; FUNCALL invokes them
(let ((double (lambda (x) (* x 2))))
  (format t "double 21 = ~a~%" (funcall double 21)))

;; MAPCAR applies a function to each element of a list
(format t "squares: ~a~%" (mapcar (lambda (x) (* x x)) '(1 2 3 4 5)))

;; REDUCE folds a list down to a single value (#'* is the * function)
(format t "product: ~a~%" (reduce #'* '(1 2 3 4 5)))

;; REMOVE-IF-NOT keeps only the elements that satisfy a predicate
(format t "evens: ~a~%" (remove-if-not #'evenp '(1 2 3 4 5 6)))

;; A closure: an inner function that captures and mutates outer state
(defun make-counter ()
  (let ((count 0))
    (lambda ()
      (incf count))))

(let ((counter (make-counter)))
  (format t "count: ~a ~a ~a~%"
          (funcall counter)
          (funcall counter)
          (funcall counter)))
