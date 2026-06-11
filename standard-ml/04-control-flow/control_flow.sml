fun fizzbuzz n =
  let
    fun line k =
      if k mod 15 = 0 then "FizzBuzz"
      else if k mod 3 = 0 then "Fizz"
      else if k mod 5 = 0 then "Buzz"
      else Int.toString k
    fun loop k =
      if k > n then ()                          (* base case: stop *)
      else (print (line k ^ "\n"); loop (k + 1))
  in
    loop 1
  end

val () = fizzbuzz 15
