import gleam/int
import gleam/io

// Classic recursion: the base case stops, the recursive case shrinks `n`
fn factorial(n: Int) -> Int {
  case n {
    0 -> 1
    _ -> n * factorial(n - 1)
  }
}

// Tail-recursive sum using an accumulator. The BEAM optimizes this into
// a loop, so it stays safe even on long lists.
fn sum_list(numbers: List(Int), total: Int) -> Int {
  case numbers {
    [] -> total
    [first, ..rest] -> sum_list(rest, total + first)
  }
}

pub fn main() {
  io.println("5! = " <> int.to_string(factorial(5)))
  io.println("sum = " <> int.to_string(sum_list([1, 2, 3, 4, 5], 0)))
}
