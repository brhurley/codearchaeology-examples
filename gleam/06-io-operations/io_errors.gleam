import gleam/io
import simplifile

pub fn main() {
  // Create a file we know exists
  let _ = simplifile.write(to: "present.txt", contents: "hello")

  // Reading a file that exists succeeds with Ok
  case simplifile.read(from: "present.txt") {
    Ok(contents) -> io.println("Read present.txt: " <> contents)
    Error(_) -> io.println("Could not read present.txt")
  }

  // Reading a missing file returns Error — nothing is thrown, execution continues
  case simplifile.read(from: "missing.txt") {
    Ok(contents) -> io.println("Read missing.txt: " <> contents)
    Error(error) ->
      io.println("Could not read missing.txt: " <> simplifile.describe_error(error))
  }
}
