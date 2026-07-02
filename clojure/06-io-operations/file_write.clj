;; Writing files in Clojure
(require '[clojure.string :as string])

;; spit writes a string to a file (creating or overwriting it)
(spit "greetings.txt" "Hello from Clojure!\n")

;; :append true adds to the file instead of overwriting it
(spit "greetings.txt" "A second line.\n" :append true)

;; Build content from a data structure, then write it
(let [lines ["Alpha" "Beta" "Gamma"]]
  (spit "letters.txt" (string/join "\n" lines)))

(println "Files written.")

;; Read them back to confirm
(print (slurp "greetings.txt"))
(println "---")
(println (slurp "letters.txt"))
