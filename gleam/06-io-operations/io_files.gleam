import gleam/io
import gleam/int
import gleam/list
import gleam/string
import simplifile

pub fn main() {
  let path = "notes.txt"

  // write creates the file, or overwrites it if it already exists
  let _ = simplifile.write(to: path, contents: "First line\nSecond line\n")

  // append adds to the end without overwriting what is already there
  let _ = simplifile.append(to: path, contents: "Appended line\n")

  // read the whole file back as a single String
  case simplifile.read(from: path) {
    Ok(contents) -> {
      io.println("--- " <> path <> " ---")
      io.print(contents)
    }
    Error(_) -> io.println("Could not read " <> path)
  }

  // Build a file from a list of lines, then read and number each one
  let langs = ["Gleam", "Erlang", "Elixir"]
  let _ = simplifile.write(to: "languages.txt", contents: string.join(langs, "\n"))

  case simplifile.read(from: "languages.txt") {
    Ok(contents) -> {
      io.println("--- languages.txt ---")
      contents
      |> string.split("\n")
      |> list.index_map(fn(line, i) { int.to_string(i) <> ": " <> line })
      |> list.each(io.println)
    }
    Error(_) -> io.println("Could not read languages.txt")
  }
}
