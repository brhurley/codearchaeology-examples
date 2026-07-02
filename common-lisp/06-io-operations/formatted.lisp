;;;; The format function's directive mini-language

;; ~10a pads a value to 10 columns, left-justified
(format t "~10a~a~%" "Name" "Score")
(format t "~10a~a~%" "Alice" 95)
(format t "~10a~a~%" "Bob" 87)

;; Number formatting
(format t "Pi to 4 places: ~,4f~%" 3.14159265)
(format t "Hex: ~x  Octal: ~o  Binary: ~b~%" 255 255 255)
(format t "Padded number: ~5,'0d~%" 42)

;; ~r spells numbers; ~@r produces Roman numerals
(format t "In English: ~r~%" 42)
(format t "In Roman: ~@r~%" 2026)

;; ~{ ~} iterates over a list; ~^ skips the separator after the last item
(format t "Languages: ~{~a~^, ~}~%" '("Lisp" "Scheme" "Clojure"))

;; ~:p prints "s" unless the preceding number was 1
(format t "~d item~:p~%" 1)
(format t "~d item~:p~%" 3)
