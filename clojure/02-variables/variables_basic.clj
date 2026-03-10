;; Integers (arbitrary precision with Long by default)
(def my-age 42)
(def big-number 10000000000000)

;; Floating-point (Java double)
(def pi 3.14159)
(def exact-pi 22/7)  ; Clojure ratios — exact rational arithmetic!

;; Strings
(def language-name "Clojure")
(def greeting (str "Hello from " language-name "!"))

;; Booleans
(def is-functional true)
(def is-mutable false)

;; nil — Clojure's null value
(def nothing nil)

;; Characters
(def first-char \C)

;; Keywords — lightweight identifiers, often used as map keys
(def status :active)
(def role :admin)

;; Symbols (quoted so they aren't evaluated as variable references)
(def my-symbol 'clojure)

(println "Age:" my-age)
(println "Big number:" big-number)
(println "Pi:" pi)
(println "Exact pi (ratio):" exact-pi)
(println "Greeting:" greeting)
(println "Functional?" is-functional)
(println "Mutable?" is-mutable)
(println "Nothing:" nothing)
(println "First char:" first-char)
(println "Status keyword:" status)
(println "Symbol:" my-symbol)
