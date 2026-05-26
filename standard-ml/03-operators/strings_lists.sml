(* String concatenation with ^ *)
val full = "Hello" ^ ", " ^ "World"
val () = print (full ^ "\n")

(* Strings compare lexicographically *)
val () = print ("apple < banana : " ^ Bool.toString ("apple" < "banana") ^ "\n")

(* List cons (::) prepends one element to a list *)
val nums = 1 :: 2 :: 3 :: []

(* List append (@) joins two whole lists *)
val more = nums @ [4, 5]

(* Turn the list into a comma-separated string for printing *)
val () = print (String.concatWith ", " (map Int.toString more) ^ "\n")
