;; Reading console input in Clojure

;; read-line reads one line from stdin as a string.
;; with-in-str feeds it fixed input so the example is reproducible.
(with-in-str "Grace\n42\n"
  (let [name (read-line)
        age  (read-line)]
    (println (str "Hello, " name "!"))
    (println (str "Next year you will be "
                  (inc (Integer/parseInt age))
                  "."))))

;; In a real interactive program you would prompt and read directly:
;;   (print "Enter your name: ")
;;   (flush)                       ; force the prompt to appear before reading
;;   (let [name (read-line)]
;;     (println (str "Hello, " name "!")))
