import Core library "io";

fn Run() {
  var counter: i32 = 0;

  counter += 10;
  Core.PrintStr("After += 10: ");
  Core.Print(counter);
  Core.PrintStr("\n");

  counter -= 3;
  Core.PrintStr("After -= 3:  ");
  Core.Print(counter);
  Core.PrintStr("\n");

  counter *= 4;
  Core.PrintStr("After *= 4:  ");
  Core.Print(counter);
  Core.PrintStr("\n");

  counter /= 2;
  Core.PrintStr("After /= 2:  ");
  Core.Print(counter);
  Core.PrintStr("\n");

  counter %= 7;
  Core.PrintStr("After %= 7:  ");
  Core.Print(counter);
  Core.PrintStr("\n");
}
