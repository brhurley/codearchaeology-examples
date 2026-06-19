import gleam/int
import gleam/io
import gleam/list

// Named function with typed parameters and return type
fn add(a: Int, b: Int) -> Int {
  a + b
}

// Labelled arguments, with recursion to compute a power
fn power(base base: Int, exponent exp: Int) -> Int {
  case exp {
    0 -> 1
    _ -> base * power(base: base, exponent: exp - 1)
  }
}

// Higher-order function: accepts a function as an argument
fn transform(numbers: List(Int), with f: fn(Int) -> Int) -> List(Int) {
  list.map(numbers, f)
}

pub fn main() {
  // Calling a basic function
  io.println("add(2, 3) = " <> int.to_string(add(2, 3)))

  // Labelled arguments make the intent obvious
  io.println("2^10 = " <> int.to_string(power(base: 2, exponent: 10)))

  // Anonymous function passed to a higher-order function
  let tripled = transform([1, 2, 3], fn(x) { x * 3 })
  io.println("tripled sum = " <> int.to_string(int.sum(tripled)))

  // The pipe operator chains function calls top-to-bottom
  let result =
    [1, 2, 3, 4]
    |> list.filter(fn(x) { x % 2 == 0 })
    |> int.sum
  io.println("even sum = " <> int.to_string(result))
}
