import gleam/float
import gleam/int
import gleam/io

// Custom type with multiple variants (algebraic data type)
type Color {
  Red
  Green
  Blue
  Custom(r: Int, g: Int, b: Int)
}

// Single-variant type acts like a record/struct
type Point {
  Point(x: Float, y: Float)
}

// Generic type - works with any types for first and second
type Pair(a, b) {
  Pair(first: a, second: b)
}

pub fn main() {
  // Custom types with variants
  let color = Blue
  let custom_color = Custom(r: 255, g: 128, b: 0)

  io.println("=== Custom Types ===")
  io.println("Color: " <> color_to_string(color))
  io.println("Custom: " <> color_to_string(custom_color))

  // Single-variant types support field access with dot notation
  let origin = Point(x: 0.0, y: 0.0)
  let p = Point(x: 3.0, y: 4.0)

  io.println("")
  io.println("=== Record-Style Types ===")
  io.println("Origin: " <> point_to_string(origin))
  io.println("Point: " <> point_to_string(p))

  // Record update syntax creates a new value with some fields changed
  let moved = Point(..p, y: 10.0)
  io.println("Moved: " <> point_to_string(moved))

  // Generic types infer their type parameters from usage
  let pair = Pair(first: "age", second: 30)

  io.println("")
  io.println("=== Generic Types ===")
  io.println(
    "Pair: (" <> pair.first <> ", " <> int.to_string(pair.second) <> ")",
  )

  // Tuples - anonymous groupings of values
  let coords = #(10, 20)
  let #(cx, cy) = coords

  io.println("")
  io.println("=== Tuples ===")
  io.println("x=" <> int.to_string(cx) <> ", y=" <> int.to_string(cy))

  // Lists - linked lists where all elements share the same type
  let numbers = [1, 2, 3, 4, 5]
  let with_zero = [0, ..numbers]
  let first = case with_zero {
    [head, ..] -> int.to_string(head)
    [] -> "empty"
  }

  io.println("")
  io.println("=== Lists ===")
  io.println("First element: " <> first)
  io.println(
    "List length: " <> int.to_string(list_length(with_zero, 0)),
  )
}

fn color_to_string(color: Color) -> String {
  case color {
    Red -> "Red"
    Green -> "Green"
    Blue -> "Blue"
    Custom(r, g, b) ->
      "RGB("
      <> int.to_string(r)
      <> ", "
      <> int.to_string(g)
      <> ", "
      <> int.to_string(b)
      <> ")"
  }
}

fn point_to_string(p: Point) -> String {
  "(" <> float.to_string(p.x) <> ", " <> float.to_string(p.y) <> ")"
}

fn list_length(items: List(a), acc: Int) -> Int {
  case items {
    [] -> acc
    [_, ..rest] -> list_length(rest, acc + 1)
  }
}
