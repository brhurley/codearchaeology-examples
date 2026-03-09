import Core library "io";

fn Run() {
  // Mutable variable: var <name>: <type> = <value>;
  var x: i32 = 42;
  var y: f64 = 3.14;
  var greeting: String = "Carbon";
  var flag: bool = true;

  Core.Print(x);
  Core.PrintStr("\n");
  Core.PrintStr(greeting);
  Core.PrintStr("\n");
}
