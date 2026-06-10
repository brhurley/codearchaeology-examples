;; `do` is Scheme's imperative loop:
;; (do ((var init step) ...) (stop-test result) body ...)
(do ((i 1 (+ i 1)))      ; i starts at 1, steps by 1
    ((> i 5))            ; stop when i > 5
  (display i)
  (display " "))
(newline)

;; `for-each` runs a procedure for its effect on each list element.
(for-each
  (lambda (fruit)
    (display fruit)
    (newline))
  '("apple" "banana" "cherry"))

;; `do` can also accumulate a result. Here we collect even numbers,
;; building the list in reverse and flipping it at the end.
(define (evens-up-to n)
  (do ((i 0 (+ i 1))
       (result '() (if (even? i) (cons i result) result)))
      ((> i n) (reverse result))))

(display (evens-up-to 10))
(newline)
