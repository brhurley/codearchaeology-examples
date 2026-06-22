(* Functions in OCaml *)

(* A simple function with two parameters - no parentheses, no commas *)
let add x y = x + y

(* Type annotations are optional but allowed *)
let multiply (x : int) (y : int) : int = x * y

(* The last expression is the return value - no 'return' keyword *)
let square x = x * x

(* Local bindings with 'let ... in' create scope inside a function *)
let hypotenuse a b =
  let a2 = square a in
  let b2 = square b in
  sqrt (float_of_int (a2 + b2))

(* Recursion requires the 'rec' keyword *)
let rec factorial n =
  if n <= 1 then 1
  else n * factorial (n - 1)

(* Mutual recursion uses 'and' to join definitions *)
let rec is_even n =
  if n = 0 then true else is_odd (n - 1)
and is_odd n =
  if n = 0 then false else is_even (n - 1)

let () =
  Printf.printf "add 3 4 = %d\n" (add 3 4);
  Printf.printf "multiply 6 7 = %d\n" (multiply 6 7);
  Printf.printf "square 9 = %d\n" (square 9);
  Printf.printf "hypotenuse 3 4 = %.1f\n" (hypotenuse 3 4);
  Printf.printf "factorial 5 = %d\n" (factorial 5);
  Printf.printf "is_even 10 = %b\n" (is_even 10);
  Printf.printf "is_odd 7 = %b\n" (is_odd 7)
