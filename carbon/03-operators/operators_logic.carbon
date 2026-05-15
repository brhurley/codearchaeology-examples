import Core library "io";

fn Run() {
  let x: i32 = 10;
  let y: i32 = 20;

  Core.PrintStr("x == y: ");
  if (x == y) { Core.PrintStr("true\n"); } else { Core.PrintStr("false\n"); }

  Core.PrintStr("x != y: ");
  if (x != y) { Core.PrintStr("true\n"); } else { Core.PrintStr("false\n"); }

  Core.PrintStr("x < y: ");
  if (x < y) { Core.PrintStr("true\n"); } else { Core.PrintStr("false\n"); }

  Core.PrintStr("x >= 10 and y <= 20: ");
  if (x >= 10 and y <= 20) { Core.PrintStr("true\n"); } else { Core.PrintStr("false\n"); }

  Core.PrintStr("x > 100 or y == 20: ");
  if (x > 100 or y == 20) { Core.PrintStr("true\n"); } else { Core.PrintStr("false\n"); }

  Core.PrintStr("not (x == y): ");
  if (not (x == y)) { Core.PrintStr("true\n"); } else { Core.PrintStr("false\n"); }
}
