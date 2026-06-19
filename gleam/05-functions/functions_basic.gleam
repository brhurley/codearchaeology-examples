import gleam/int
import gleam/io

// A function with typed parameters and a return type
pub fn add(a: Int, b: Int) -> Int {
  a + b
}

// Type annotations are optional; the compiler infers them here
pub fn double(x) {
  x * 2
}

// The last expression is the return value - no `return` keyword
fn square(x: Int) -> Int {
  x * x
}

pub fn main() {
  let sum = add(3, 4)
  let doubled = double(10)
  let squared = square(5)

  io.println("3 + 4 = " <> int.to_string(sum))
  io.println("double(10) = " <> int.to_string(doubled))
  io.println("square(5) = " <> int.to_string(squared))
}
