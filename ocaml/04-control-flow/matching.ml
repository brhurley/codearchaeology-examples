(* Match on plain integer values; _ is the catch-all wildcard *)
let describe_digit n =
  match n with
  | 0 -> "zero"
  | 1 -> "one"
  | 2 -> "two"
  | _ -> "many"

(* Guards (when clauses) add conditions to a pattern *)
let classify n =
  match n with
  | 0 -> "zero"
  | n when n < 0 -> "negative"
  | n when n mod 2 = 0 -> "positive even"
  | _ -> "positive odd"

(* Match on a variant type - the compiler warns if a case is missing *)
type traffic_light = Red | Yellow | Green

let action light =
  match light with
  | Red -> "stop"
  | Yellow -> "slow down"
  | Green -> "go"

(* Match deconstructs lists into head and tail *)
let describe_list lst =
  match lst with
  | [] -> "empty"
  | [x] -> Printf.sprintf "one element: %d" x
  | x :: _ -> Printf.sprintf "starts with %d" x

let () =
  print_endline (describe_digit 2);
  print_endline (classify (-5));
  print_endline (classify 8);
  print_endline (action Green);
  print_endline (describe_list [42; 7; 9])
