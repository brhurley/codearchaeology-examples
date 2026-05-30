;; if returns a value - both branches are expressions
(def temperature 18)

(println (if (> temperature 25)
           "It's warm"
           "It's cool"))

;; if with no else branch returns nil when the test is false
(println (if (< temperature 0) "Freezing!"))

;; when is "if with no else" - useful for side effects when true
(when (< temperature 20)
  (println "Grab a jacket")
  (println "Maybe a scarf too"))

;; when-not is the inverse - body runs only when the test is false
(when-not (zero? temperature)
  (println "Temperature is non-zero"))

;; In Clojure only false and nil are falsey - 0 and "" are truthy
(println (if 0 "zero is truthy" "zero is falsey"))
(println (if "" "empty string is truthy" "empty string is falsey"))
(println (if nil "nil is truthy" "nil is falsey"))
