(* Variables and Types in OCaml *)

(* === Let Bindings: Immutable by Default === *)
let x = 42
let pi = 3.14159
let name = "OCaml"
let letter = 'A'
let is_functional = true

let () = Printf.printf "x = %d\n" x
let () = Printf.printf "pi = %f\n" pi
let () = Printf.printf "name = %s\n" name
let () = Printf.printf "letter = %c\n" letter
let () = Printf.printf "is_functional = %b\n" is_functional

(* === Type Annotations (Optional but Allowed) === *)
let year : int = 1996
let language : string = "OCaml"
let () = Printf.printf "\n%s first appeared in %d\n" language year

(* === No Implicit Type Coercion === *)
let a = 5
let b = 2.5
(* let wrong = a + b  -- Error! Can't mix int and float *)
let result = float_of_int a +. b
let () = Printf.printf "\nfloat_of_int %d +. %g = %g\n" a b result

(* Integer and float operators are separate *)
let int_sum = 10 + 20
let float_sum = 1.5 +. 2.5
let () = Printf.printf "int: 10 + 20 = %d\n" int_sum
let () = Printf.printf "float: 1.5 +. 2.5 = %g\n" float_sum

(* === Tuples === *)
let point = (3, 4)
let (px, py) = point
let () = Printf.printf "\npoint = (%d, %d)\n" px py

let person = ("Ada", 36, true)
let (pname, age, active) = person
let () = Printf.printf "person = (%s, %d, %b)\n" pname age active

(* === Records === *)
type color = { r : int; g : int; b : int }

let red = { r = 255; g = 0; b = 0 }
let () = Printf.printf "\nred = { r=%d; g=%d; b=%d }\n" red.r red.g red.b

(* Functional update: copy with changes *)
let purple = { red with b = 128 }
let () = Printf.printf "purple = { r=%d; g=%d; b=%d }\n" purple.r purple.g purple.b

(* === Option Type: No Null! === *)
let find_even lst =
  List.find_opt (fun x -> x mod 2 = 0) lst

let () =
  match find_even [1; 3; 4; 7] with
  | Some v -> Printf.printf "\nFirst even: %d\n" v
  | None -> Printf.printf "\nNo even number found\n"

let () =
  match find_even [1; 3; 7] with
  | Some v -> Printf.printf "First even: %d\n" v
  | None -> Printf.printf "No even number found\n"

(* === Variant Types (Algebraic Data Types) === *)
type shape =
  | Circle of float
  | Rectangle of float * float
  | Triangle of float * float * float

let area = function
  | Circle r -> Float.pi *. r *. r
  | Rectangle (w, h) -> w *. h
  | Triangle (a, b, c) ->
      let s = (a +. b +. c) /. 2.0 in
      sqrt (s *. (s -. a) *. (s -. b) *. (s -. c))

let shapes = [Circle 5.0; Rectangle (4.0, 6.0); Triangle (3.0, 4.0, 5.0)]

let () = print_string "\nAreas:\n"
let () = List.iter (fun s ->
  let label = match s with
    | Circle _ -> "Circle"
    | Rectangle _ -> "Rectangle"
    | Triangle _ -> "Triangle"
  in
  Printf.printf "  %s: %.2f\n" label (area s)
) shapes

(* === Mutable References (When You Need Them) === *)
let counter = ref 0
let () = counter := !counter + 1
let () = counter := !counter + 1
let () = Printf.printf "\ncounter = %d\n" !counter
