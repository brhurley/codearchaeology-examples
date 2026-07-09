let () =
  (* Printf with typed format specifiers *)
  Printf.printf "Integer:  %d\n" 42;
  Printf.printf "Float:    %.2f\n" 3.14159;
  Printf.printf "String:   %s\n" "OCaml";
  Printf.printf "Char:     %c\n" 'A';
  Printf.printf "Bool:     %b\n" true;
  Printf.printf "Hex:      %x\n" 255;

  (* Combine several values in one format string *)
  Printf.printf "%s is %d years old\n" "OCaml" 29;

  (* sprintf builds a string instead of printing it *)
  let summary = Printf.sprintf "%d + %d = %d" 2 3 5 in
  print_endline summary;

  (* Width and alignment: %-10s left-justifies in a 10-char field *)
  Printf.printf "|%-10s|%5d|\n" "left" 7
