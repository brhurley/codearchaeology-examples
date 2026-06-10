;; Simple recursion: print n down to 1, then stop.
(define (countdown n)
  (when (> n 0)
    (display n)
    (display " ")
    (countdown (- n 1))))

(countdown 5)
(newline)

;; Tail recursion with an accumulator. Proper tail calls make this
;; as efficient as an imperative loop, even for large n.
(define (sum-to n)
  (define (loop i acc)
    (if (> i n)
        acc
        (loop (+ i 1) (+ acc i))))
  (loop 1 0))

(display (sum-to 100))
(newline)

;; `let loop` (a named let) is the idiomatic loop. The name `loop`
;; becomes a procedure you call to iterate, with i and acc as state.
(define (factorial n)
  (let loop ((i n) (acc 1))
    (if (= i 0)
        acc
        (loop (- i 1) (* acc i)))))

(display (factorial 5))
(newline)
