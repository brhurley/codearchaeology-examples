;; I/O error handling in Clojure

;; Wrap risky I/O in try/catch. slurp throws if the file is missing.
(defn read-safely [path]
  (try
    (slurp path)
    (catch java.io.FileNotFoundException _
      (str "[missing file: " path "]"))
    (catch Exception e
      (str "[error: " (.getMessage e) "]"))))

;; This file exists...
(spit "data.txt" "important data")
(println (read-safely "data.txt"))

;; ...this one does not
(println (read-safely "does-not-exist.txt"))

;; finally always runs — ideal for cleanup or logging
(try
  (println "Working with resources...")
  (finally
    (println "Cleanup always runs.")))
