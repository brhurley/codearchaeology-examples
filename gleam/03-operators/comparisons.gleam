import gleam/io
import gleam/bool

pub fn main() {
  // Equality works on any type, both sides must match
  let same_int = 5 == 5
  let diff_string = "yes" != "no"

  io.println("5 == 5      -> " <> bool.to_string(same_int))
  io.println("\"yes\" != \"no\" -> " <> bool.to_string(diff_string))

  // Integer ordering uses bare operators
  let int_lt = 3 < 7
  let int_ge = 10 >= 10
  io.println("3 < 7       -> " <> bool.to_string(int_lt))
  io.println("10 >= 10    -> " <> bool.to_string(int_ge))

  // Float ordering requires dotted operators
  let float_lt = 3.5 <. 7.2
  let float_ge = 9.9 >=. 9.9
  io.println("3.5 <. 7.2  -> " <> bool.to_string(float_lt))
  io.println("9.9 >=. 9.9 -> " <> bool.to_string(float_ge))

  // Boolean operators short-circuit
  let both = True && False
  let either = True || False
  let negated = !True

  io.println("True && False -> " <> bool.to_string(both))
  io.println("True || False -> " <> bool.to_string(either))
  io.println("!True         -> " <> bool.to_string(negated))

  // && and || require Bool on both sides — no truthy/falsy values
  let combined = 5 > 3 && 2 < 4
  io.println("5 > 3 && 2 < 4 -> " <> bool.to_string(combined))
}
