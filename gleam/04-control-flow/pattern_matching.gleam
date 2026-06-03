import gleam/io
import gleam/int

pub fn main() {
  // Alternative patterns with `|` match several values in one branch
  let day = "Sat"
  let kind = case day {
    "Sat" | "Sun" -> "weekend"
    _ -> "weekday"
  }
  io.println(day <> " is a " <> kind)

  // Matching a tuple destructures several values at once
  let point = #(0, 5)
  let location = case point {
    #(0, 0) -> "origin"
    #(0, _) -> "on the y-axis"
    #(_, 0) -> "on the x-axis"
    #(x, y) -> "at " <> int.to_string(x) <> ", " <> int.to_string(y)
  }
  io.println(location)

  // The spread pattern `..` splits a list into its head and tail
  let numbers = [1, 2, 3]
  let summary = case numbers {
    [] -> "empty"
    [single] -> "one item: " <> int.to_string(single)
    [first, ..rest] ->
      "starts with "
      <> int.to_string(first)
      <> ", "
      <> int.to_string(length(rest))
      <> " more"
  }
  io.println(summary)
}

fn length(items: List(a)) -> Int {
  case items {
    [] -> 0
    [_, ..rest] -> 1 + length(rest)
  }
}
