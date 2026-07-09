(* Read a whole file, returning None if it cannot be opened *)
let read_file_safe filename =
  try
    let ic = open_in filename in
    let content = In_channel.input_all ic in
    close_in ic;
    Some content
  with Sys_error msg ->
    Printf.eprintf "Error: %s\n" msg;
    None

let () =
  (* Attempt to read a file that does not exist *)
  (match read_file_safe "does_not_exist.txt" with
   | Some content -> Printf.printf "Content: %s\n" content
   | None -> print_endline "Could not read the file");

  (* Now write a real file and read it back *)
  let oc = open_out "greeting.txt" in
  output_string oc "Hello from a safe read!";
  close_out oc;

  match read_file_safe "greeting.txt" with
  | Some content -> Printf.printf "Content: %s\n" content
  | None -> print_endline "Could not read the file"
