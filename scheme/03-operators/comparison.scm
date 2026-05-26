;; Comparison procedures return #t or #f
(display (= 5 5))      ; numeric equality
(newline)
(display (< 3 7))
(newline)
(display (> 3 7))
(newline)
(display (<= 4 4))
(newline)
(display (>= 10 2))
(newline)

;; Variadic comparison checks an entire chain at once
(display (< 1 2 3 4))  ; strictly increasing?
(newline)
(display (< 1 2 2 4))  ; the 2 2 breaks strict ordering
(newline)
(display (= 5 5 5))    ; all equal?
(newline)

;; There is no "!=" operator - negate = with not
(display (not (= 3 4)))
(newline)
