;;;; File input and output in Common Lisp

(defparameter *filename* "poem.txt")

;; Writing: :if-exists :supersede overwrites any existing file,
;; :if-does-not-exist :create makes a new one.
(with-open-file (out *filename*
                     :direction :output
                     :if-exists :supersede
                     :if-does-not-exist :create)
  (write-line "Roses are red" out)
  (write-line "Violets are blue" out)
  (format out "Lisp has parentheses~%")
  (format out "And so do you~%"))

(format t "Wrote data to ~a~%" *filename*)

;; Reading line by line. read-line returns its second argument (nil)
;; at end of file instead of signaling an error.
(format t "--- File contents ---~%")
(with-open-file (in *filename* :direction :input)
  (loop for line = (read-line in nil nil)
        while line
        do (format t "~a~%" line)))

;; Reading the whole file into one string with read-sequence.
(with-open-file (in *filename* :direction :input)
  (let ((contents (make-string (file-length in))))
    (read-sequence contents in)
    (format t "--- Character count: ~a ---~%" (length contents))))
