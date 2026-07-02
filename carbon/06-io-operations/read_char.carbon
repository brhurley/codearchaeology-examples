import Core library "io";

fn Run() {
  Core.PrintStr("Reading one character from input...\n");

  // ReadChar returns the byte value as an i32, or Core.EOF() (-1) if the
  // input stream is empty.
  var c: i32 = Core.ReadChar();
  if (c == Core.EOF()) {
    Core.PrintStr("No input was provided.\n");
  } else {
    Core.PrintStr("Byte value of first character: ");
    Core.Print(c);
  }
}
