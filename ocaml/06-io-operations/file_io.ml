(* Write a small CSV-style file *)
let write_file filename =
  let oc = open_out filename in
  Printf.fprintf oc "Apples,10\n";
  Printf.fprintf oc "Bananas,5\n";
  Printf.fprintf oc "Cherries,20\n";
  close_out oc

(* Read every line into a list, closing the channel at end of file *)
let read_file filename =
  let ic = open_in filename in
  let rec loop acc =
    match input_line ic with
    | line -> loop (line :: acc)
    | exception End_of_file ->
        close_in ic;
        List.rev acc
  in
  loop []

let () =
  let filename = "inventory.csv" in
  write_file filename;
  Printf.printf "Wrote %s\n" filename;

  let lines = read_file filename in
  Printf.printf "Read %d lines:\n" (List.length lines);
  List.iter (fun line -> Printf.printf "  %s\n" line) lines;

  (* Parse each line and total the quantities *)
  let total =
    List.fold_left
      (fun acc line ->
        match String.split_on_char ',' line with
        | [_; qty] -> acc + int_of_string qty
        | _ -> acc)
      0 lines
  in
  Printf.printf "Total items: %d\n" total
