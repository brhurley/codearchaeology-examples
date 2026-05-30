import Core library "io";

fn Run() {
  // continue: skip the third pass, run all the others
  var i: i32 = 0;
  while (i < 5) {
    i = i + 1;
    if (i == 3) {
      continue;
    }
    Core.PrintStr("step\n");
  }

  // break: leave an otherwise-infinite loop once a condition is met
  var j: i32 = 0;
  while (true) {
    if (j == 2) {
      break;
    }
    Core.PrintStr("loop\n");
    j = j + 1;
  }
}
