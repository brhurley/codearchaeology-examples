import Core library "io";

fn Run() {
  var count: i32 = 3;
  while (count > 0) {
    Core.PrintStr("tick\n");
    count = count - 1;
  }
  Core.PrintStr("liftoff\n");
}
