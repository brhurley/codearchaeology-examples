import gleam/io
import gleam/string
import gleam/int

pub fn main() {
  // String concatenation with <>
  let greeting = "Hello, " <> "Gleam" <> "!"
  io.println(greeting)

  // Without pipes — nested calls read inside-out
  let nested = string.uppercase(string.reverse("hello"))
  io.println("Nested:  " <> nested)

  // With pipes — the same logic reads top-to-bottom
  let piped =
    "hello"
    |> string.reverse
    |> string.uppercase
  io.println("Piped:   " <> piped)

  // Pipes pass the value as the first argument by default
  let count =
    [1, 2, 3, 4, 5]
    |> list_sum
    |> int.to_string

  io.println("Sum:     " <> count)

  // Operator precedence: arithmetic binds tighter than comparison,
  // which binds tighter than boolean logic
  let result = 2 + 3 * 4 > 10 && 1 < 2
  io.println("2 + 3 * 4 > 10 && 1 < 2 -> " <> case result {
    True -> "True"
    False -> "False"
  })
}

fn list_sum(numbers: List(Int)) -> Int {
  case numbers {
    [] -> 0
    [first, ..rest] -> first + list_sum(rest)
  }
}
