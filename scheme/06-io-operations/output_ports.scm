;; Output procedures take an optional port argument
(display "to standard output" (current-output-port))
(newline)

;; Standard error is just another port
(display "diagnostics go to standard error\n" (current-error-port))

;; format: ~a = display-style, ~s = write-style, ~% = newline
(format #t "~a is ~a years old~%" "Scheme" (- 2026 1975))
(format #t "display-style: ~a, write-style: ~s~%" "text" "text")

;; A string port collects output in memory instead of a device
(define greeting
  (call-with-output-string
    (lambda (port)
      (display "Hello from a " port)
      (display "string port" port))))
(display greeting)
(newline)
