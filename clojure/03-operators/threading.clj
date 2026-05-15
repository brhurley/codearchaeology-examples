;; Without threading - read inside-out, right-to-left
(def result-nested
  (str (clojure.string/upper-case (clojure.string/trim "  hello world  ")) "!"))
(println "Nested:    " result-nested)

;; With -> (thread-first) - read top-to-bottom
(def result-threaded
  (-> "  hello world  "
      clojure.string/trim
      clojure.string/upper-case
      (str "!")))
(println "Threaded:  " result-threaded)

;; Thread-first works well for object-like transformations on the first arg
(def person {:name "Ada" :age 36})
(-> person
    (assoc :role "Engineer")
    (update :age inc)
    println)

;; ->> (thread-last) suits sequence operations where the collection is the last arg
(->> (range 1 11)             ; (1 2 3 4 5 6 7 8 9 10)
     (filter even?)           ; (2 4 6 8 10)
     (map #(* % %))           ; (4 16 36 64 100)
     (reduce +)               ; 220
     (println "Sum of squares of evens 1-10:"))

;; Operators as first-class values - pass + and < to higher-order functions
(println "Reduce with +:   " (reduce + [1 2 3 4 5]))
(println "Sort with <:     " (sort < [3 1 4 1 5 9 2 6]))
