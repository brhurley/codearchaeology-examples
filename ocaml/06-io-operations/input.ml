let () =
  print_string "Enter your name: ";
  let name = read_line () in

  print_string "Enter your age: ";
  let age = read_int () in

  Printf.printf "Hello, %s!\n" name;
  Printf.printf "Next year you will be %d\n" (age + 1)
