import gleam/io
import gleam/int
import gleam/float
import gleam/string

pub fn main() {
  // println writes a line to stdout; print omits the trailing newline
  io.println("Standard output, one line at a time.")
  io.print("No newline here... ")
  io.println("continued on the same line.")

  // There is no printf — build the string and convert values explicitly
  let name = "Ada"
  let age = 36
  io.println("Name: " <> name <> ", Age: " <> int.to_string(age))

  // Convert numbers with the int and float modules
  io.println("Pi is approximately " <> float.to_string(3.14159))
  io.println("Half of 3 is " <> float.to_string(3.0 /. 2.0))

  // The string module shapes output — repeat, uppercase, and more
  io.println(string.repeat("=", 20))
  io.println(string.uppercase("done"))

  // println_error writes to standard error instead of standard output
  io.println_error("This diagnostic goes to stderr")
}
