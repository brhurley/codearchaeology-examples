(* Custom function composition operator *)
let (>>) f g x = g (f x)

let double x = x * 2
let add_one x = x + 1

(* double then add_one *)
let f = double >> add_one

let () =
  Printf.printf "(double >> add_one) 5 = %d\n" (f 5);
  Printf.printf "(double >> add_one) 10 = %d\n" (f 10)
