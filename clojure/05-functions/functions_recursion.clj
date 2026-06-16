;; Recursive factorial: multiply n by the factorial of n-1
(defn factorial
  [n]
  (if (<= n 1)
    1                        ; base case
    (* n (factorial (dec n))))) ; recursive case

(println (factorial 5))
(println (factorial 10))
