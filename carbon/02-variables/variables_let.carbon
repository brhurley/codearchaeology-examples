import Core library "io";

fn Run() {
  // Immutable binding: let <name>: <type> = <value>;
  let max_retries: i32 = 5;
  let pi: f64 = 3.14159;
  let language_name: String = "Carbon";

  Core.PrintStr("Language: ");
  Core.PrintStr(language_name);
  Core.PrintStr("\n");
  Core.PrintStr("Max retries: ");
  Core.Print(max_retries);
  Core.PrintStr("\n");
}
