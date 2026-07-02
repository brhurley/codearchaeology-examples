import Core library "io";

fn Run() {
  // PrintStr writes a string with no trailing newline.
  Core.PrintStr("=== Carbon I/O ===\n");

  // Print writes an i32 followed by a newline (it lowers to printf "%d\n").
  Core.PrintStr("First appeared: ");
  Core.Print(2022);

  // Because PrintStr never adds a newline, you can build a line in pieces
  // and compute values inline before finishing it with Print.
  let width: i32 = 8;
  let height: i32 = 5;
  Core.PrintStr("Area: ");
  Core.Print(width * height);

  // PrintChar writes a single character (again, no newline). Character
  // literals use single quotes, including escapes like '\n'.
  Core.PrintChar('D');
  Core.PrintChar('o');
  Core.PrintChar('n');
  Core.PrintChar('e');
  Core.PrintChar('\n');
}
