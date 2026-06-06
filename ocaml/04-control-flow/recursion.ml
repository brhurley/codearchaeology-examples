(* Count down from n using recursion; begin...end groups expressions *)
let rec countdown n =
  if n <= 0 then
    print_endline "Liftoff!"
  else begin
    Printf.printf "%d... " n;
    countdown (n - 1)
  end

(* Classic (non-tail) recursion: factorial *)
let rec factorial n =
  if n <= 1 then 1
  else n * factorial (n - 1)

(* Tail-recursive sum using an accumulator - runs in constant stack space *)
let sum_to n =
  let rec loop acc i =
    if i > n then acc
    else loop (acc + i) (i + 1)
  in
  loop 0 1

(* Walk a list with the function keyword (shorthand for match) *)
let rec sum_list = function
  | [] -> 0
  | x :: rest -> x + sum_list rest

let () =
  countdown 3;
  Printf.printf "factorial 5 = %d\n" (factorial 5);
  Printf.printf "sum 1..100 = %d\n" (sum_to 100);
  Printf.printf "sum of list = %d\n" (sum_list [10; 20; 30])
