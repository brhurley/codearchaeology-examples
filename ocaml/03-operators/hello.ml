(* Without |>  -  reads inside-out *)
let result = List.length (List.filter (fun x -> x > 0) [1; -2; 3; -4; 5])

(* With |>  -  reads top-to-bottom *)
let result =
  [1; -2; 3; -4; 5]
  |> List.filter (fun x -> x > 0)
  |> List.length
