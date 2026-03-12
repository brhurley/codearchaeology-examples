;;; Global variables: defvar, defparameter, defconstant

;; defvar: sets value only if the variable is unbound
(defvar *app-name* "CodeArchaeology")
(defvar *version* "1.0.0")

;; defparameter: always sets the value (useful for reloadable configs)
(defparameter *debug-mode* nil)
(defparameter *max-retries* 3)

;; defconstant: compile-time constant (value must not change)
(defconstant +golden-ratio+ 1.6180339887)
(defconstant +speed-of-light+ 299792458)  ; metres per second

(format t "App: ~a v~a~%" *app-name* *version*)
(format t "Debug mode: ~a~%" *debug-mode*)
(format t "Max retries: ~a~%" *max-retries*)
(format t "Golden ratio: ~a~%" +golden-ratio+)
(format t "Speed of light: ~a m/s~%" +speed-of-light+)

;; Dynamic binding with let overrides a special variable locally
;; The original value is restored when let exits
(defparameter *greeting* "Hello")

(defun print-greeting (name)
  (format t "~a, ~a!~%" *greeting* name))

(print-greeting "World")

(let ((*greeting* "Greetings"))   ; dynamically rebind *greeting*
  (print-greeting "Lisper"))      ; uses "Greetings" inside this let

(print-greeting "World")          ; restored to "Hello"
