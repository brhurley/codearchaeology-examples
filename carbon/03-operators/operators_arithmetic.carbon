import Core library "io";

fn Run() {
  let a: i32 = 17;
  let b: i32 = 5;

  Core.PrintStr("a + b = ");
  Core.Print(a + b);
  Core.PrintStr("\n");

  Core.PrintStr("a - b = ");
  Core.Print(a - b);
  Core.PrintStr("\n");

  Core.PrintStr("a * b = ");
  Core.Print(a * b);
  Core.PrintStr("\n");

  Core.PrintStr("a / b = ");
  Core.Print(a / b);
  Core.PrintStr("\n");

  Core.PrintStr("a % b = ");
  Core.Print(a % b);
  Core.PrintStr("\n");
}
