import Core library "io";

// A function with two parameters that returns their sum.
fn Add(x: i32, y: i32) -> i32 {
  return x + y;
}

// Functions can call other functions.
fn AddThree(a: i32, b: i32, c: i32) -> i32 {
  return Add(Add(a, b), c);
}

// A function with no return type prints instead of returning.
fn Announce(label: str, value: i32) {
  Core.PrintStr(label);
  Core.Print(value);
}

fn Run() {
  Announce("Add(3, 4) = ", Add(3, 4));
  Announce("AddThree(1, 2, 3) = ", AddThree(1, 2, 3));
}
