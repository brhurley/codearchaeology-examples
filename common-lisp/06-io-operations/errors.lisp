;;;; Handling I/O errors with the condition system

;; Opening a missing file signals a FILE-ERROR; handler-case recovers.
(handler-case
    (with-open-file (in "does-not-exist.txt" :direction :input)
      (format t "~a~%" (read-line in)))
  (file-error (e)
    (declare (ignore e))
    (format t "Could not open the file (handled the error)~%")))

;; Alternatively, :if-does-not-exist nil returns nil instead of erroring.
(let ((stream (open "also-missing.txt"
                    :direction :input
                    :if-does-not-exist nil)))
  (if stream
      (progn (format t "Opened the file~%") (close stream))
      (format t "File is missing, handled without an error~%")))
