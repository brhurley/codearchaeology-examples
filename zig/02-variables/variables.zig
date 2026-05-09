const std = @import("std");

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();

    // const = immutable binding, var = mutable
    const language: []const u8 = "Zig";
    var year: i32 = 2016;
    year += 9; // var can be reassigned; const cannot

    // Type inference: no annotation needed when the type is obvious
    const is_systems_lang = true;
    const answer = 42;

    // Integers of any bit width — not just 8/16/32/64
    const byte_value: u8 = 255;          // unsigned 8-bit
    const big_int: i64 = 9_000_000_000;  // signed 64-bit, underscores for readability
    const three_bits: u3 = 7;            // unsigned 3-bit (values 0..7)

    try stdout.print("language          = {s}\n", .{language});
    try stdout.print("year              = {d}\n", .{year});
    try stdout.print("is_systems_lang   = {}\n", .{is_systems_lang});
    try stdout.print("answer            = {d}\n", .{answer});
    try stdout.print("byte_value (u8)   = {d}\n", .{byte_value});
    try stdout.print("big_int (i64)     = {d}\n", .{big_int});
    try stdout.print("three_bits (u3)   = {d}\n", .{three_bits});
}
