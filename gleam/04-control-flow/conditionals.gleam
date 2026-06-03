import gleam/io
import gleam/int

pub fn main() {
  let temperature = 18

  // Guards (the `if` after a pattern) turn `case` into a multi-way branch
  let description = case temperature {
    t if t < 0 -> "freezing"
    t if t < 15 -> "cold"
    t if t < 25 -> "comfortable"
    _ -> "hot"
  }
  io.println(int.to_string(temperature) <> " degrees is " <> description)

  // `case` is an expression, so its result can be bound with `let`
  let number = -7
  let sign = case number {
    n if n > 0 -> "positive"
    n if n < 0 -> "negative"
    _ -> "zero"
  }
  io.println(int.to_string(number) <> " is " <> sign)

  // Matching on a Bool is how you write a simple two-way decision
  let age = 20
  let status = case age >= 18 {
    True -> "adult"
    False -> "minor"
  }
  io.println("Age " <> int.to_string(age) <> ": " <> status)
}
