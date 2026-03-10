;; type returns the Java class of a value
(println "Type of 42:" (type 42))
(println "Type of 3.14:" (type 3.14))
(println "Type of 22/7:" (type 22/7))
(println "Type of \"hello\":" (type "hello"))
(println "Type of true:" (type true))
(println "Type of nil:" (type nil))
(println "Type of :keyword:" (type :keyword))
(println "Type of [1 2 3]:" (type [1 2 3]))
(println "Type of {\"a\" 1}:" (type {"a" 1}))

;; Predicate functions for type checking
(println)
(println "integer? 42:" (integer? 42))
(println "float? 3.14:" (float? 3.14))
(println "ratio? 22/7:" (ratio? 22/7))
(println "string? \"hi\":" (string? "hi"))
(println "keyword? :x:" (keyword? :x))
(println "nil? nil:" (nil? nil))
(println "nil? false:" (nil? false))
(println "boolean? true:" (boolean? true))
(println "vector? [1 2]:" (vector? [1 2]))
(println "map? {:a 1}:" (map? {:a 1}))
(println "seq? '(1 2):" (seq? '(1 2)))

;; Type conversions
(println)
(println "int->float:" (float 42))
(println "float->int:" (int 3.9))       ; truncates
(println "string->int:" (Integer/parseInt "123"))
(println "int->string:" (str 456))
(println "keyword->string:" (name :hello))
(println "string->keyword:" (keyword "world"))
(println "number->ratio:" (rationalize 0.1))  ; exact rational
