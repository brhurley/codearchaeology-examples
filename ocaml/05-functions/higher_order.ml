(* Higher-order functions, closures, and partial application *)

(* Takes a function 'f' as an argument and applies it twice *)
let apply_twice f x = f (f x)

(* Returns a function - the returned 'fun' closes over 'n' (a closure) *)
let make_adder n = fun x -> x + n

(* Currying means this is equivalent: supply one arg, get a function back *)
let make_multiplier n x = n * x

let () =
  (* Pass an anonymous function (lambda) defined with 'fun' *)
  Printf.printf "apply_twice (+3) to 10 = %d\n" (apply_twice (fun x -> x + 3) 10);

  (* Partial application: supply some arguments now, the rest later *)
  let add5 = make_adder 5 in
  Printf.printf "add5 100 = %d\n" (add5 100);

  let double = make_multiplier 2 in
  Printf.printf "double 21 = %d\n" (double 21);

  (* Standard higher-order functions over lists *)
  let nums = [1; 2; 3; 4; 5] in
  let squared = List.map (fun x -> x * x) nums in
  let total = List.fold_left (+) 0 squared in
  Printf.printf "sum of squares = %d\n" total;

  (* The pipe operator |> threads a value through a chain of functions *)
  let result =
    nums
    |> List.filter (fun x -> x mod 2 = 1)
    |> List.map (fun x -> x * 10)
    |> List.fold_left (+) 0
  in
  Printf.printf "odd numbers x10 summed = %d\n" result
