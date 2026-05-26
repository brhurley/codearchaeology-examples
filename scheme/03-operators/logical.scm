;; and / or / not for boolean logic
(display (and #t #t))
(newline)
(display (and #t #f))
(newline)
(display (or #f #t))
(newline)
(display (not #f))
(newline)

;; and returns the LAST value when all operands are truthy
(display (and 1 2 3))
(newline)
;; or returns the FIRST truthy value
(display (or #f 5 10))
(newline)

;; Only #f is false - everything else is truthy
(display (if 0 "true" "false"))   ; 0 is truthy!
(newline)
(display (if '() "true" "false")) ; empty list is truthy!
(newline)

;; Identity values for the empty forms
(display (and))   ; and with no args
(newline)
(display (or))    ; or with no args
(newline)
