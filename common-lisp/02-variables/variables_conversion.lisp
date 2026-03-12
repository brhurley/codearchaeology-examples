;;; Type Conversion in Common Lisp

;; Number conversions
(let ((n 42)
      (f 3.7)
      (r 7/2))
  ;; Integer to float
  (format t "42 as float: ~a~%" (float n))
  ;; Float to integer (truncate, floor, ceiling, round)
  (format t "3.7 truncated: ~a~%" (truncate f))
  (format t "3.7 floored: ~a~%" (floor f))
  (format t "3.7 ceiling: ~a~%" (ceiling f))
  (format t "3.7 rounded: ~a~%" (round f))
  ;; Rational to float
  (format t "7/2 as float: ~a~%" (float r))
  ;; Float to rational (exact!)
  (format t "3.14 as rational: ~a~%" (rationalize 3.14)))

;; String / number conversions
(format t "~%String/Number conversions:~%")
(let ((num-str "42")
      (float-str "3.14"))
  ;; String to number
  (format t "\"42\" as number: ~a~%" (parse-integer num-str))
  (format t "\"3.14\" as float: ~a~%" (read-from-string float-str))
  ;; Number to string
  (format t "42 as string: ~s~%" (write-to-string 42))
  (format t "3.14 as string: ~s~%" (write-to-string 3.14)))

;; Character conversions
(format t "~%Character conversions:~%")
(format t "Code 65 to char: ~a~%" (code-char 65))
(format t "#\\A to code: ~a~%" (char-code #\A))
(format t "#\\a uppercase: ~a~%" (char-upcase #\a))
(format t "Char to string: ~s~%" (string #\Z))

;; List / vector interconversion
(format t "~%Sequence conversions:~%")
(let ((lst '(1 2 3 4 5))
      (vec #(10 20 30)))
  (format t "List to vector: ~a~%" (coerce lst 'vector))
  (format t "Vector to list: ~a~%" (coerce vec 'list))
  (format t "String to list: ~a~%" (coerce "hello" 'list))
  (format t "List to string: ~a~%" (coerce '(#\h #\i) 'string)))
