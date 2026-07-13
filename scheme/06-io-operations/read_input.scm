(use-modules (ice-9 rdelim))

(display "What is your name?")
(newline)

(let ((name (read-line)))
  (format #t "Hello, ~a! Enter two numbers, one per line.~%" name)
  (let* ((a (string->number (read-line)))
         (b (string->number (read-line))))
    (format #t "Their sum is ~a~%" (+ a b))))
