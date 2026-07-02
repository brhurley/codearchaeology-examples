;;;; Reading input in Common Lisp

;; In a real program you would read from the terminal like this:
;;   (read-line)                    ; one line as a string
;;   (parse-integer (read-line))    ; one line converted to an integer
;;   (read)                         ; one parsed Lisp object

;; For a reproducible example we read from a string stream. The same
;; read-line / read functions work on any input stream.
(let ((input (format nil "Ada Lovelace~%42~%3 4 5")))
  (with-input-from-string (in input)

    ;; read-line reads a full line as a string
    (let ((name (read-line in)))
      (format t "Name: ~a~%" name))

    ;; parse-integer converts a numeric string to an integer
    (let ((age (parse-integer (read-line in))))
      (format t "Next year you will be ~a~%" (1+ age)))

    ;; read parses one Lisp object at a time (here, three numbers)
    (let ((x (read in))
          (y (read in))
          (z (read in)))
      (format t "Sum: ~a~%" (+ x y z)))))
