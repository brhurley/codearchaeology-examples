import gleam/io
import gleam/int

pub fn main() {
  // Recursion replaces the imperative `for`/`while` loop
  io.println("Countdown:")
  countdown(5)
  io.println("Liftoff!")

  // A classic recursive factorial
  io.println("5! = " <> int.to_string(factorial(5)))

  // Tail recursion with an accumulator sums 1..100 efficiently
  io.println("Sum 1..100 = " <> int.to_string(sum_to(100, 0)))
}

fn countdown(n: Int) -> Nil {
  case n {
    0 -> Nil
    _ -> {
      io.println(int.to_string(n))
      countdown(n - 1)
    }
  }
}

fn factorial(n: Int) -> Int {
  case n {
    0 -> 1
    _ -> n * factorial(n - 1)
  }
}

fn sum_to(n: Int, acc: Int) -> Int {
  case n {
    0 -> acc
    _ -> sum_to(n - 1, acc + n)
  }
}
