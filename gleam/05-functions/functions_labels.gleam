import gleam/int
import gleam/io

// `from` and `subtract` are the labels; `a` and `b` are the names
// used inside the function body.
fn subtract(from a: Int, subtract b: Int) -> Int {
  a - b
}

pub fn main() {
  // Call sites read like a sentence
  let r1 = subtract(from: 10, subtract: 3)

  // Labelled arguments can be given in any order
  let r2 = subtract(subtract: 3, from: 10)

  io.println(int.to_string(r1))
  io.println(int.to_string(r2))
}
