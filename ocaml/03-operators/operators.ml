(* Operators in OCaml - comprehensive demo *)

(* ===== Integer Arithmetic ===== *)
let a = 17
let b = 5

let () =
  print_endline "=== Integer Arithmetic ===";
  Printf.printf "a = %d, b = %d\n" a b;
  Printf.printf "a + b   = %d\n" (a + b);
  Printf.printf "a - b   = %d\n" (a - b);
  Printf.printf "a * b   = %d\n" (a * b);
  Printf.printf "a / b   = %d  (integer division truncates)\n" (a / b);
  Printf.printf "a mod b = %d\n" (a mod b);
  Printf.printf "-a      = %d  (unary negation)\n" (-a)

(* ===== Float Arithmetic (note the dots) ===== *)
let x = 17.0
let y = 5.0

let () =
  print_endline "\n=== Float Arithmetic ===";
  Printf.printf "x +. y = %.2f\n" (x +. y);
  Printf.printf "x -. y = %.2f\n" (x -. y);
  Printf.printf "x *. y = %.2f\n" (x *. y);
  Printf.printf "x /. y = %.2f\n" (x /. y);
  Printf.printf "x ** y = %.2f  (power, float only)\n" (x ** y);
  Printf.printf "sqrt 16.0 = %.2f\n" (sqrt 16.0)

(* ===== Comparison Operators ===== *)
let () =
  print_endline "\n=== Comparison Operators ===";
  Printf.printf "5 = 5    -> %b  (structural equality)\n" (5 = 5);
  Printf.printf "5 <> 6   -> %b  (structural inequality)\n" (5 <> 6);
  Printf.printf "5 < 6    -> %b\n" (5 < 6);
  Printf.printf "5 > 6    -> %b\n" (5 > 6);
  Printf.printf "5 <= 5   -> %b\n" (5 <= 5);
  Printf.printf "5 >= 6   -> %b\n" (5 >= 6)

(* ===== Logical Operators ===== *)
let () =
  print_endline "\n=== Logical Operators ===";
  Printf.printf "true && false -> %b\n" (true && false);
  Printf.printf "true || false -> %b\n" (true || false);
  Printf.printf "not true      -> %b\n" (not true);
  Printf.printf "(2 > 1) && (3 < 4) -> %b\n" ((2 > 1) && (3 < 4))

(* ===== String Concatenation ===== *)
let () =
  print_endline "\n=== String Concatenation ===";
  let greeting = "Hello" ^ ", " ^ "OCaml" ^ "!" in
  print_endline greeting

(* ===== Functional Operators ===== *)
let () =
  print_endline "\n=== Functional Operators ===";
  let double n = n * 2 in
  let add_one n = n + 1 in
  (* Pipe operator: x |> f  is the same as  f x *)
  let piped = 5 |> double |> add_one in
  Printf.printf "5 |> double |> add_one     = %d\n" piped;
  (* Application operator: f @@ x  is the same as  f x  (right-assoc, low precedence) *)
  let applied = add_one @@ double @@ 5 in
  Printf.printf "add_one @@ double @@ 5     = %d\n" applied

(* ===== Reference Operators ===== *)
let () =
  print_endline "\n=== Reference Operators ===";
  let counter = ref 0 in
  counter := !counter + 10;   (* := assigns, ! dereferences *)
  counter := !counter + 5;
  Printf.printf "counter after +10, +5 = %d\n" !counter

(* ===== Operator Precedence ===== *)
let () =
  print_endline "\n=== Precedence ===";
  Printf.printf "2 + 3 * 4    = %d  (* binds tighter than +)\n" (2 + 3 * 4);
  Printf.printf "(2 + 3) * 4  = %d  (parentheses override)\n" ((2 + 3) * 4);
  Printf.printf "10 - 4 - 2   = %d  (- is left-associative)\n" (10 - 4 - 2)
