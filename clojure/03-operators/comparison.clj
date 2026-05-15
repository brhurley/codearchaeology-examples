;; Numeric comparison - variadic and chainable
(println "1 < 2:           " (< 1 2))
(println "1 < 2 < 3 < 4:   " (< 1 2 3 4))   ; => true (all ascending)
(println "1 < 3 < 2:       " (< 1 3 2))     ; => false
(println "5 >= 5 >= 4:     " (>= 5 5 4))    ; => true

;; Equality
(println "= integers:      " (= 1 1 1))           ; => true
(println "= mixed numeric: " (= 1 1.0))           ; => false (different types)
(println "== numeric only: " (== 1 1.0))          ; => true (numeric equivalence)
(println "= collections:   " (= [1 2 3] [1 2 3])) ; => true (value equality)

;; Not equal
(println "not= example:    " (not= 1 2))

;; Type-aware predicates
(println "zero?:           " (zero? 0))
(println "pos?:            " (pos? 5))
(println "neg?:            " (neg? -3))
(println "even?:           " (even? 4))
(println "odd?:            " (odd? 7))
