(* Labeled and optional arguments *)

(* Labeled arguments use ~name and may be passed in any order *)
let divide ~numerator ~denominator =
  numerator / denominator

(* Optional arguments use ?(name = default) *)
let greet ?(greeting = "Hello") name =
  Printf.sprintf "%s, %s!" greeting name

let () =
  (* Labeled arguments - order does not matter *)
  Printf.printf "%d\n" (divide ~numerator:20 ~denominator:4);
  Printf.printf "%d\n" (divide ~denominator:5 ~numerator:100);

  (* Optional argument omitted - the default "Hello" is used *)
  print_endline (greet "World");

  (* Optional argument supplied explicitly *)
  print_endline (greet ~greeting:"Bonjour" "Monde")
