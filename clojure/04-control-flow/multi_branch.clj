;; cond tests each condition in order, returning the first match's value.
;; :else is just a truthy keyword used as the default catch-all.
(defn grade [score]
  (cond
    (>= score 90) "A"
    (>= score 80) "B"
    (>= score 70) "C"
    (>= score 60) "D"
    :else         "F"))

(println "Score 95 ->" (grade 95))
(println "Score 83 ->" (grade 83))
(println "Score 71 ->" (grade 71))
(println "Score 42 ->" (grade 42))

;; case compares against compile-time constants (fast dispatch).
;; The trailing value (with no test) is the default.
(defn describe-day [day]
  (case day
    (:saturday :sunday) "Weekend"
    :monday             "Start of the week"
    (:tuesday :wednesday :thursday :friday) "Weekday"
    "Unknown day"))

(println "Saturday ->" (describe-day :saturday))
(println "Monday   ->" (describe-day :monday))
(println "Wednesday ->" (describe-day :wednesday))
(println "Funday   ->" (describe-day :funday))
