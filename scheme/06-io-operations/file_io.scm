(use-modules (ice-9 rdelim))

;; Write a file: the port is closed automatically when the lambda returns
(call-with-output-file "journal.txt"
  (lambda (port)
    (display "day 1: learned display\n" port)
    (display "day 2: learned lambda\n" port)))

;; Append using an explicit port opened in "a" mode
(let ((port (open-file "journal.txt" "a")))
  (display "day 3: learned ports\n" port)
  (close-port port))

;; Read back line by line until the end-of-file object appears
(call-with-input-file "journal.txt"
  (lambda (port)
    (let loop ((line (read-line port))
               (n 1))
      (unless (eof-object? line)
        (format #t "~a: ~a~%" n line)
        (loop (read-line port) (+ n 1))))))

;; write and read round-trip whole Scheme data structures
(call-with-output-file "config.scm"
  (lambda (port)
    (write '((name . "archive") (retries . 3)) port)))

(let ((config (call-with-input-file "config.scm" read)))
  (format #t "retries: ~a~%" (cdr (assq 'retries config))))

;; Handle a missing file instead of crashing
(catch 'system-error
  (lambda ()
    (call-with-input-file "missing.txt" read-line))
  (lambda (key . args)
    (display "could not read missing.txt")
    (newline)))

;; Clean up
(delete-file "journal.txt")
(delete-file "config.scm")
