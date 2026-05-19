import gleam/io
import gleam/int
import gleam/float

pub fn main() {
  // Integer arithmetic uses unadorned operators
  let sum = 7 + 3
  let difference = 7 - 3
  let product = 7 * 3
  let quotient = 7 / 3
  let remainder = 7 % 3

  io.println("Integer arithmetic:")
  io.println("  7 + 3 = " <> int.to_string(sum))
  io.println("  7 - 3 = " <> int.to_string(difference))
  io.println("  7 * 3 = " <> int.to_string(product))
  io.println("  7 / 3 = " <> int.to_string(quotient))
  io.println("  7 % 3 = " <> int.to_string(remainder))

  // Float arithmetic uses dot-suffixed operators
  let fsum = 7.0 +. 3.0
  let fdiff = 7.0 -. 3.0
  let fprod = 7.0 *. 3.0
  let fquot = 7.0 /. 2.0

  io.println("")
  io.println("Float arithmetic:")
  io.println("  7.0 +. 3.0 = " <> float.to_string(fsum))
  io.println("  7.0 -. 3.0 = " <> float.to_string(fdiff))
  io.println("  7.0 *. 3.0 = " <> float.to_string(fprod))
  io.println("  7.0 /. 2.0 = " <> float.to_string(fquot))

  // Division by zero returns 0 in Gleam (no runtime exception)
  io.println("  10 / 0 = " <> int.to_string(10 / 0))
}
