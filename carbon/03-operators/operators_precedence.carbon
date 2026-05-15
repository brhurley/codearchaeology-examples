import Core library "io";

fn Run() {
  // Standard precedence: * binds tighter than +
  let r1: i32 = 2 + 3 * 4;
  Core.PrintStr("2 + 3 * 4 = ");
  Core.Print(r1);
  Core.PrintStr("\n");

  // Parentheses change evaluation order
  let r2: i32 = (2 + 3) * 4;
  Core.PrintStr("(2 + 3) * 4 = ");
  Core.Print(r2);
  Core.PrintStr("\n");

  // Mixing comparison with arithmetic
  let total: i32 = 5 * 6 - 2;
  Core.PrintStr("5 * 6 - 2 == 28: ");
  if (total == 28) { Core.PrintStr("true\n"); } else { Core.PrintStr("false\n"); }
}
