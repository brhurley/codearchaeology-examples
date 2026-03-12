;;; Strings, Characters, Symbols, and Booleans

;; Strings: mutable character sequences
(let ((greeting "Hello, Common Lisp!")
      (empty ""))
  (format t "String: ~a~%" greeting)
  (format t "Length: ~a~%" (length greeting))
  (format t "Uppercase: ~a~%" (string-upcase greeting))
  (format t "Substring: ~a~%" (subseq greeting 7 18))
  (format t "Empty? ~a~%" (string= empty "")))

;; Characters: distinct type, written as #\X
(let ((ch-a #\A)
      (ch-space #\Space)
      (ch-newline #\Newline))
  (format t "~%Character: ~a~%" ch-a)
  (format t "Char code: ~a~%" (char-code ch-a))
  (format t "Is alpha? ~a~%" (alpha-char-p ch-a))
  (format t "Is space? ~a~%" (char= ch-space #\Space))
  ;; Convert between strings and characters
  (format t "String from char: ~a~%" (string ch-a))
  (format t "First char of string: ~a~%" (char "Alpha" 0)))

;; Symbols: interned names, a uniquely Lisp concept
;; Symbols are used as identifiers, keys, and data
(let ((sym 'hello)
      (keyword :status))
  (format t "~%Symbol: ~a~%" sym)
  (format t "Symbol type: ~a~%" (type-of sym))
  (format t "Keyword: ~a~%" keyword)
  (format t "Keyword type: ~a~%" (type-of keyword))
  ;; Symbols have names
  (format t "Symbol name: ~a~%" (symbol-name sym))
  ;; Keywords are self-evaluating and used as named parameters
  (format t "Is keyword? ~a~%" (keywordp keyword)))

;; Booleans: T and NIL
;; NIL is also the empty list; T is the canonical true value
;; Any non-NIL value is truthy
(let ((yes t)
      (no nil)
      (also-true 42)     ; any non-NIL value is true
      (also-false '()))  ; empty list is NIL
  (format t "~%T is true? ~a~%" (if yes "yes" "no"))
  (format t "NIL is false? ~a~%" (if no "yes" "no"))
  (format t "42 is truthy? ~a~%" (if also-true "yes" "no"))
  (format t "() is falsy? ~a~%" (if also-false "yes" "no"))
  (format t "NIL = ()? ~a~%" (eq nil '())))
