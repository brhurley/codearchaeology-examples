;; A global (dynamic) variable, named with *earmuffs* by convention
(defparameter *bonus* 10)

;; LET introduces local bindings; *bonus* is visible because it is global
(defun pay (base)
  (let ((total (+ base *bonus*)))   ; total is local to PAY
    total))

;; Rebinding a special variable with LET shadows it dynamically
(defun no-bonus-pay (base)
  (let ((*bonus* 0))
    (pay base)))

;; LABELS defines local functions - even mutually recursive ones
(defun countdown (n)
  (labels ((step-down (i)
             (when (>= i 0)
               (format t "~a " i)
               (step-down (1- i)))))
    (step-down n)
    (terpri)))                      ; TERPRI prints a newline

(format t "with bonus: ~a~%" (pay 100))
(format t "no bonus:   ~a~%" (no-bonus-pay 100))
(format t "global:     ~a~%" *bonus*)
(countdown 5)
