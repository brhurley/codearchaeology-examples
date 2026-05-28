const std = @import("std");

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();

    // --- Arithmetic on signed integers ---
    const a: i32 = 17;
    const b: i32 = 5;
    try stdout.print("a + b      = {d}\n", .{a + b});
    try stdout.print("a - b      = {d}\n", .{a - b});
    try stdout.print("a * b      = {d}\n", .{a * b});
    try stdout.print("@divTrunc  = {d}\n", .{@divTrunc(a, b)});
    try stdout.print("@rem       = {d}\n", .{@rem(a, b)});

    // --- Floating-point division ---
    const x: f64 = 17.0;
    const y: f64 = 5.0;
    try stdout.print("x / y      = {d:.2}\n", .{x / y});

    // --- Wrapping and saturating on u8 ---
    const max: u8 = 255;
    const wrapped: u8 = max +% 1;
    const saturated: u8 = max +| 10;
    try stdout.print("255 +% 1   = {d}\n", .{wrapped});
    try stdout.print("255 +| 10  = {d}\n", .{saturated});

    // --- Comparison operators ---
    try stdout.print("a == b     = {}\n", .{a == b});
    try stdout.print("a != b     = {}\n", .{a != b});
    try stdout.print("a >  b     = {}\n", .{a > b});

    // --- Logical operators (short-circuit) ---
    const t = true;
    const f = false;
    try stdout.print("t and f    = {}\n", .{t and f});
    try stdout.print("t or  f    = {}\n", .{t or f});
    try stdout.print("!t         = {}\n", .{!t});

    // --- Bitwise operators ---
    const m: u8 = 0b1100;
    const n: u8 = 0b1010;
    try stdout.print("m & n      = {b}\n", .{m & n});
    try stdout.print("m | n      = {b}\n", .{m | n});
    try stdout.print("m ^ n      = {b}\n", .{m ^ n});
    try stdout.print("m << 1     = {b}\n", .{m << 1});

    // --- Array/string concatenation and repetition (comptime) ---
    const greeting = "Hello, " ++ "Zig!";
    const line = "-" ** 12;
    try stdout.print("{s}\n", .{greeting});
    try stdout.print("{s}\n", .{line});

    // --- Optional unwrap with `orelse` ---
    const maybe_value: ?i32 = 42;
    const missing: ?i32 = null;
    try stdout.print("maybe orelse 0 = {d}\n", .{maybe_value orelse 0});
    try stdout.print("null  orelse 0 = {d}\n", .{missing orelse 0});
}
