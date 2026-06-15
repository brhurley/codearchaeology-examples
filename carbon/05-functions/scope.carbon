import Core library "io";

fn Describe(n: i32) {
  // 'doubled' is local to Describe; it does not exist outside this body.
  var doubled: i32 = n * 2;
  Core.PrintStr("Doubled: ");
  Core.Print(doubled);
}

fn Run() {
  var value: i32 = 21;
  Describe(value);
  // 'doubled' from Describe is not visible here, but 'value' still is.
  Core.PrintStr("Original: ");
  Core.Print(value);
}
