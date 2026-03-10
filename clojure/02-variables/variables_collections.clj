;; Vectors — ordered, indexed collections (most common)
(def fruits ["apple" "banana" "cherry"])
(def numbers [1 2 3 4 5])

;; Lists — linked lists, good for sequential processing
(def my-list '(10 20 30 40))

;; Maps — key/value pairs (keywords as keys is idiomatic)
(def person {:name "Alice"
             :age 30
             :role :developer})

;; Sets — unique values, unordered
(def languages #{:clojure :haskell :erlang :scala})

;; Accessing elements
(println "First fruit:" (first fruits))
(println "Second fruit:" (second fruits))
(println "Third fruit:" (nth fruits 2))
(println "Last fruit:" (last fruits))

;; Accessing map values
(println "Name:" (:name person))
(println "Age:" (:age person))
(println "Role:" (get person :role))

;; "Adding" to a vector returns a new vector
(def more-fruits (conj fruits "date"))
(println "Original fruits:" fruits)
(println "Extended fruits:" more-fruits)

;; "Adding" to a map returns a new map
(def updated-person (assoc person :city "London"))
(println "Original person:" person)
(println "Updated person:" updated-person)

;; Sets — check membership
(println "Clojure in set?" (contains? languages :clojure))
(println "Python in set?" (contains? languages :python))

;; Count works on all collections
(println "Fruit count:" (count fruits))
(println "Map entries:" (count person))
