;; Console output in Clojure

;; println adds a trailing newline
(println "Written with println")

;; print does not add a newline
(print "No newline -> ")
(println "same line")

;; prn/pr print values in read-able form (strings keep their quotes)
(prn "quoted")
(prn [1 2 3])

;; println accepts multiple arguments, separated by spaces
(println "Sum of 2 and 3 is" (+ 2 3))

;; format returns a formatted string (Java-style format specifiers)
(println (format "Name: %s, Age: %d" "Ada" 36))
(println (format "Pi is about %.2f" Math/PI))

;; str concatenates its arguments into a single string
(println (str "abc" 1 2 3))
