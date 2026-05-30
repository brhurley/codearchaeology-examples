;; loop/recur: factorial computed with an accumulator.
;; recur rebinds n and acc and jumps back to loop - no stack growth.
(defn factorial [n]
  (loop [n   n
         acc 1]
    (if (zero? n)
      acc
      (recur (dec n) (* acc n)))))

(println "5! =" (factorial 5))
(println "10! =" (factorial 10))

;; recur also works to re-enter a function directly (tail position).
(defn count-down [n]
  (when (pos? n)
    (println "T-minus" n)
    (recur (dec n))))

(count-down 3)
(println "Liftoff!")

;; Recursion without recur is fine for shallow, non-tail calls.
(defn fib [n]
  (if (< n 2)
    n
    (+ (fib (- n 1)) (fib (- n 2)))))

(println "fib(10) =" (fib 10))
