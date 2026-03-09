import Core library "io";

fn Run() {
  var count: i32 = 0;

  Core.PrintStr("Initial count: ");
  Core.Print(count);
  Core.PrintStr("\n");

  count = 10;

  Core.PrintStr("Updated count: ");
  Core.Print(count);
  Core.PrintStr("\n");

  count = count + 5;

  Core.PrintStr("Final count: ");
  Core.Print(count);
  Core.PrintStr("\n");
}
