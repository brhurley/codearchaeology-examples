;; doseq iterates over a collection, binding each element in turn.
(doseq [fruit ["apple" "banana" "cherry"]]
  (println "Fruit:" fruit))

;; dotimes repeats a body n times, binding an index from 0 to n-1.
(dotimes [i 3]
  (println "Iteration" i))

;; doseq with :when acts as a filter, and supports multiple bindings.
(doseq [n (range 1 11)
        :when (even? n)]
  (println n "is even"))

;; The functional way: transform the whole sequence, no explicit loop.
;; map applies a function to each element; filter keeps matching ones.
(def numbers (range 1 6))
(println "Squares:" (map (fn [x] (* x x)) numbers))
(println "Evens:"   (filter even? numbers))
(println "Sum:"     (reduce + numbers))
