;;;; Console output functions in Common Lisp

;; format with t writes to standard output; ~% is a newline
(format t "Standard formatted output~%")

;; princ prints a value without quotes and without a trailing newline
(princ "princ: no quotes")
(terpri)  ; terpri outputs a single newline

;; write-line prints a string followed by a newline
(write-line "write-line adds a newline")

;; print outputs a newline BEFORE the value, and adds quotes to strings
(print "print adds quotes")

;; ~a is aesthetic (human-readable), ~s is machine-readable (with quotes)
;; ~& is a "fresh line": a newline only if not already at the line start
(format t "~&~a vs ~s~%" "text" "text")

;; write-string writes characters with no added newline
(write-string "no newline here")
(terpri)

;; finish-output flushes buffered output to the stream
(finish-output)
