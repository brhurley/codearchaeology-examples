import gleam/io
import gleam/int
import gleam/list
import gleam/string

pub fn main() {
  let numbers = [1, 2, 3, 4, 5]

  // list.each runs a function on each element for its side effect
  io.println("Each number:")
  list.each(numbers, fn(n) { io.println("  " <> int.to_string(n)) })

  // list.map transforms every element, returning a new list
  let doubled = list.map(numbers, fn(n) { n * 2 })
  io.println("Doubled: " <> string.inspect(doubled))

  // list.filter keeps only the elements that satisfy a predicate
  let evens = list.filter(numbers, fn(n) { n % 2 == 0 })
  io.println("Evens: " <> string.inspect(evens))

  // list.fold reduces a list to a single value
  let total = list.fold(numbers, 0, fn(acc, n) { acc + n })
  io.println("Sum: " <> int.to_string(total))
}
