const std = @import("std");

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();

    // Float types: f16, f32, f64, f80, f128
    const pi: f64 = 3.14;

    // int -> float and float -> int require explicit built-ins
    const int_val: i32 = 42;
    const as_float: f64 = @floatFromInt(int_val);

    const float_val: f64 = 9.75;
    const as_int: i32 = @intFromFloat(float_val); // truncates toward zero

    // Integer-to-integer casts use @intCast (must fit at runtime in safe modes)
    const wide: i64 = 1000;
    const narrow: i16 = @intCast(wide);

    // Optionals: a value of type T or null
    var maybe_name: ?[]const u8 = null;
    try stdout.print("before assignment: {?s}\n", .{maybe_name});

    maybe_name = "Andrew";
    try stdout.print("after assignment:  {?s}\n", .{maybe_name});

    // Unwrap with `orelse` to provide a default
    const name = maybe_name orelse "Unknown";

    try stdout.print("pi               = {d:.2}\n", .{pi});
    try stdout.print("int -> float     = {d:.1}\n", .{as_float});
    try stdout.print("float -> int     = {d}\n", .{as_int});
    try stdout.print("i64 {d} -> i16 = {d}\n", .{ wide, narrow });
    try stdout.print("unwrapped name   = {s}\n", .{name});
}
