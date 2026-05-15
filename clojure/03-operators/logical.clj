;; and returns the first falsy value, or the last value if all are truthy
(println "and all true:    " (and 1 2 3))         ; => 3
(println "and with false:  " (and 1 false 3))     ; => false
(println "and with nil:    " (and 1 nil 3))       ; => nil

;; or returns the first truthy value, or the last value if all are falsy
(println "or first truthy: " (or nil false 42))   ; => 42
(println "or all falsy:    " (or nil false))      ; => false

;; Idiomatic default values
(defn greet [name]
  (str "Hello, " (or name "stranger")))
(println (greet "Ada"))
(println (greet nil))

;; not always returns a boolean
(println "not true:        " (not true))
(println "not nil:         " (not nil))
(println "not 0:           " (not 0))      ; => false! 0 is truthy

;; Short-circuit evaluation prevents division by zero
(defn safe-divide [a b]
  (and (not (zero? b)) (/ a b)))
(println "safe 10/2:       " (safe-divide 10 2))
(println "safe 10/0:       " (safe-divide 10 0))
