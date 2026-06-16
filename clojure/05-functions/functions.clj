;; A named function with a docstring and one parameter
(defn greet
  "Returns a friendly greeting for the given name."
  [name]
  (str "Hello, " name "!"))

;; A function with two parameters; the last expression is the return value
(defn add
  [a b]
  (+ a b))

(println (greet "Ada"))
(println (add 3 4))
