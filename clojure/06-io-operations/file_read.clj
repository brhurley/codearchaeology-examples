;; Reading files in Clojure
(require '[clojure.java.io :as io])

;; Set up a sample file to read
(spit "poem.txt" "roses are red\nviolets are blue\nClojure is\nfunctional too\n")

;; slurp reads the whole file into one string
(println "Whole file with slurp:")
(println (slurp "poem.txt"))

;; For large files, stream line-by-line with a lazy sequence.
;; with-open closes the reader automatically.
(println "Line by line:")
(with-open [rdr (io/reader "poem.txt")]
  (doseq [line (line-seq rdr)]
    (println (str "> " line))))

;; line-seq composes with any sequence function, like count
(with-open [rdr (io/reader "poem.txt")]
  (println "Total lines:" (count (line-seq rdr))))
