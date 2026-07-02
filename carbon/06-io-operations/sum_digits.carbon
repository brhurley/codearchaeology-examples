import Core library "io";

fn Run() {
  var digits: i32 = 0;
  var sum: i32 = 0;

  var c: i32 = Core.ReadChar();
  while (c != Core.EOF()) {
    // ASCII digits '0' through '9' occupy byte codes 48 through 57.
    if (c >= 48 and c <= 57) {
      sum += c - 48;
      digits += 1;
    }
    c = Core.ReadChar();
  }

  Core.PrintStr("Digits found: ");
  Core.Print(digits);
  Core.PrintStr("Sum of digits: ");
  Core.Print(sum);
}
