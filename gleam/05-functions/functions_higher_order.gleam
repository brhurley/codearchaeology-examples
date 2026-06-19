import gleam/int
import gleam/io
import gleam/list

// A higher-order function: it takes another function as a parameter
fn apply_twice(f: fn(Int) -> Int, value: Int) -> Int {
  f(f(value))
}

fn add(a: Int, b: Int) -> Int {
  a + b
}

pub fn main() {
  // An anonymous function bound to a variable
  let increment = fn(x: Int) -> Int { x + 1 }
  io.println(int.to_string(apply_twice(increment, 5)))

  // A closure captures `factor` from the surrounding scope
  let factor = 3
  let scale = fn(x: Int) -> Int { x * factor }
  io.println(int.to_string(scale(10)))

  // Function capture: `add(2, _)` becomes a one-argument function
  let add_two = add(2, _)
  io.println(int.to_string(add_two(8)))

  // Pass an anonymous function to a standard-library higher-order function
  let doubled = list.map([1, 2, 3], fn(x) { x * 2 })
  io.println(int.to_string(int.sum(doubled)))
}
