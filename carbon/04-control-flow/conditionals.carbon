import Core library "io";

fn Classify(n: i32) {
  if (n > 0) {
    Core.PrintStr("positive: ");
  } else if (n < 0) {
    Core.PrintStr("negative: ");
  } else {
    Core.PrintStr("zero: ");
  }

  // if/then/else is an expression that produces a value
  Core.PrintStr(if (n >= 0) then "non-negative\n" else "negative\n");
}

fn Run() {
  Classify(7);
  Classify(-3);
  Classify(0);
}
