import Core library "io";

fn Run() {
  // Signed integers
  var a: i8  = 127;
  var b: i16 = 32767;
  var c: i32 = 2147483647;
  var d: i64 = 9223372036854775807;

  // Unsigned integers
  var ua: u8  = 255;
  var ub: u16 = 65535;
  var uc: u32 = 4294967295;

  // Floating point
  var f: f32 = 3.14;
  var g: f64 = 2.718281828;

  Core.PrintStr("i32 max: ");
  Core.Print(c);
  Core.PrintStr("\n");

  Core.PrintStr("u8 max: ");
  Core.Print(ua as i32);
  Core.PrintStr("\n");
}
