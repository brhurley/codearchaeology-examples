;; let creates a local scope with name/value pairs
(let [x 10
      y 20
      sum (+ x y)
      product (* x y)]
  (println "x:" x)
  (println "y:" y)
  (println "sum:" sum)
  (println "product:" product))

;; let bindings are sequential — later bindings can use earlier ones
(let [radius 5.0
      area (* Math/PI radius radius)
      circumference (* 2 Math/PI radius)]
  (println "Radius:" radius)
  (println "Area:" (format "%.4f" area))
  (println "Circumference:" (format "%.4f" circumference)))

;; let is an expression — it returns the value of the last form
(def circle-area
  (let [r 7]
    (* Math/PI r r)))

(println "Circle area (r=7):" (format "%.4f" circle-area))
