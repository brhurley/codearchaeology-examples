let () =
  (* A for loop counting up with "to" *)
  print_string "Counting up:";
  for i = 1 to 5 do
    Printf.printf " %d" i
  done;
  print_newline ();

  (* A for loop counting down with "downto" *)
  print_string "Counting down:";
  for i = 5 downto 1 do
    Printf.printf " %d" i
  done;
  print_newline ();

  (* A while loop driven by a mutable reference *)
  let n = ref 16 in
  print_string "Halving:";
  while !n > 0 do
    Printf.printf " %d" !n;
    n := !n / 2
  done;
  print_newline ();

  (* No "break" in OCaml - raise a local exception for early exit *)
  let exception Found of int in
  let numbers = [| 4; 8; 15; 16; 23; 42 |] in
  try
    for i = 0 to Array.length numbers - 1 do
      if numbers.(i) > 20 then raise (Found numbers.(i))
    done;
    print_endline "No value over 20 found"
  with Found v -> Printf.printf "First value over 20: %d\n" v
