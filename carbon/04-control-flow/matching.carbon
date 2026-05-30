import Core library "io";

fn NameDay(n: i32) {
  match (n) {
    case 1 => {
      Core.PrintStr("Monday\n");
    }
    case 6 => {
      Core.PrintStr("Saturday\n");
    }
    case 7 => {
      Core.PrintStr("Sunday\n");
    }
    default => {
      Core.PrintStr("a weekday\n");
    }
  }
}

fn Run() {
  NameDay(1);
  NameDay(4);
  NameDay(7);
}
