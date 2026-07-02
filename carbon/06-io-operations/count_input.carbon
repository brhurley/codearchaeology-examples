import Core library "io";

fn Run() {
  var chars: i32 = 0;
  var newlines: i32 = 0;

  // Prime the loop with the first read, then keep reading until EOF.
  var c: i32 = Core.ReadChar();
  while (c != Core.EOF()) {
    chars += 1;
    // 10 is the ASCII code for the newline character '\n'.
    if (c == 10) {
      newlines += 1;
    }
    c = Core.ReadChar();
  }

  Core.PrintStr("Characters read: ");
  Core.Print(chars);
  Core.PrintStr("Newlines read: ");
  Core.Print(newlines);
}
