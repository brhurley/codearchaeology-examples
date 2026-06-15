import Core library "io";

// 'T:! Ordered' means T must implement the Ordered interface,
// which provides the comparison operators used below.
fn Min[T:! Ordered](x: T, y: T) -> T {
  return if x <= y then x else y;
}

fn Max[T:! Ordered](x: T, y: T) -> T {
  return if x >= y then x else y;
}

fn Run() {
  Core.PrintStr("Min(8, 3) = ");
  Core.Print(Min(8, 3));
  Core.PrintStr("Max(8, 3) = ");
  Core.Print(Max(8, 3));
}
