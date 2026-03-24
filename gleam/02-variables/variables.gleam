import gleam/float
import gleam/int
import gleam/io

pub fn main() {
  // Basic types - the compiler infers each type
  let name = "Gleam"
  let year = 2016
  let version = 1.14
  let is_functional = True

  io.println("=== Basic Types ===")
  io.println("String: " <> name)
  io.println("Int: " <> int.to_string(year))
  io.println("Float: " <> float.to_string(version))
  io.println("Bool: " <> bool_to_string(is_functional))

  // Type annotations are optional but serve as documentation
  let language: String = "Gleam"
  let major: Int = 1
  let rating: Float = 9.5

  io.println("")
  io.println("=== Type Annotations ===")
  io.println(language <> " v" <> int.to_string(major))
  io.println("Rating: " <> float.to_string(rating))

  // Int and Float use SEPARATE operators: + vs +.  * vs *.
  let int_sum = 10 + 25
  let float_sum = 1.5 +. 2.5

  io.println("")
  io.println("=== Separate Numeric Types ===")
  io.println("Int: 10 + 25 = " <> int.to_string(int_sum))
  io.println("Float: 1.5 +. 2.5 = " <> float.to_string(float_sum))

  // Explicit type conversions between Int and Float
  let x = 42
  let x_as_float = int.to_float(x)
  let y = 3.75
  let y_rounded = float.round(y)
  let y_truncated = float.truncate(y)

  io.println("")
  io.println("=== Type Conversions ===")
  io.println(
    "Int to Float: " <> int.to_string(x) <> " -> " <> float.to_string(
      x_as_float,
    ),
  )
  io.println(
    "Float rounded: "
    <> float.to_string(y)
    <> " -> "
    <> int.to_string(y_rounded),
  )
  io.println(
    "Float truncated: "
    <> float.to_string(y)
    <> " -> "
    <> int.to_string(y_truncated),
  )

  // Shadowing: rebind a name to a new value
  let count = 1
  io.println("")
  io.println("=== Shadowing ===")
  io.println("count = " <> int.to_string(count))
  let count = count + 1
  io.println("count (rebound) = " <> int.to_string(count))
}

fn bool_to_string(value: Bool) -> String {
  case value {
    True -> "True"
    False -> "False"
  }
}
