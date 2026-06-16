;; make-adder returns a new function that remembers n (a closure)
(defn make-adder
  [n]
  (fn [x] (+ x n)))

(def add-10 (make-adder 10))

;; Higher-order functions take other functions as arguments
;; #(* % %) is shorthand for (fn [x] (* x x))
(println (add-10 5))
(println (map #(* % %) [1 2 3 4]))   ; transform each element
(println (filter even? (range 10)))  ; keep elements matching a predicate
(println (reduce + [1 2 3 4 5]))     ; combine elements into one value

;; The ->> threading macro pipes a value through a series of functions
(println (->> (range 1 6)
              (map #(* % %))         ; square each number
              (filter even?)         ; keep the even squares
              (reduce +)))           ; add them up
