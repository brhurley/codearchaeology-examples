;; Multi-arity: one definition handles zero or one argument
(defn welcome
  ([] (welcome "stranger"))          ; zero-arg version calls the one-arg version
  ([name] (str "Welcome, " name "!")))

;; Variadic: & gathers any extra arguments into a sequence called numbers
(defn sum-all
  [& numbers]
  (apply + numbers))                  ; apply spreads the sequence into +

(println (welcome))
(println (welcome "Rich"))
(println (sum-all 1 2 3 4 5))
