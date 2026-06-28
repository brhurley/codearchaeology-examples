(* add has type int -> int -> int (curried) *)
fun add x y = x + y

(* Applying add to one argument yields a new function *)
val addFive = add 5

(* A function that returns a function (a closure over n) *)
fun makeAdder n = fn x => x + n
val addTen = makeAdder 10

(* A closure capturing a mutable reference keeps private state *)
fun makeCounter () =
  let
    val count = ref 0
  in
    fn () => (count := !count + 1; !count)
  end

val tick = makeCounter ()

val () = print ("addFive 3 = " ^ Int.toString (addFive 3) ^ "\n")
val () = print ("addTen 7 = " ^ Int.toString (addTen 7) ^ "\n")
val () = print ("tick () = " ^ Int.toString (tick ()) ^ "\n")
val () = print ("tick () = " ^ Int.toString (tick ()) ^ "\n")
val () = print ("tick () = " ^ Int.toString (tick ()) ^ "\n")
