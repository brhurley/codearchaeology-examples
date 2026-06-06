(* if/else is an EXPRESSION in OCaml - it evaluates to a value *)

let () =
  let temperature = 18 in

  (* Used for side effects: both branches return unit *)
  if temperature > 25 then
    print_endline "It's warm outside"
  else
    print_endline "Bring a jacket";

  (* Used as an expression: the result is bound to a name *)
  let label = if temperature > 20 then "warm" else "cool" in
  Printf.printf "The weather is %s\n" label;

  (* Chained conditions with else if *)
  let category =
    if temperature < 0 then "freezing"
    else if temperature < 15 then "cold"
    else if temperature < 25 then "mild"
    else "hot"
  in
  Printf.printf "Category: %s\n" category;

  (* An if with no else returns unit, so the branch must be unit too *)
  if temperature < 20 then print_endline "Below 20 degrees"
