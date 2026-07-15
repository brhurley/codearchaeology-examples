const std = @import("std");

pub fn main() !void {
    // Wrap stdout in a buffer - output accumulates in memory
    var bw = std.io.bufferedWriter(std.io.getStdOut().writer());
    const stdout = bw.writer();

    const language = "Zig";
    const year: u16 = 2016;
    const version: f64 = 0.14;

    // Placeholders are type-checked at compile time
    try stdout.print("{s} first appeared in {d}\n", .{ language, year });

    // Precision, width, and alignment
    try stdout.print("version: {d:.2}\n", .{version});
    try stdout.print("[{d:>6}] right-aligned in 6 columns\n", .{42});
    try stdout.print("[{d:<6}] left-aligned in 6 columns\n", .{42});

    // Alternate bases: hexadecimal and binary
    try stdout.print("255 in hex: {x}, in binary: {b}\n", .{ @as(u8, 255), @as(u8, 255) });

    // Nothing reaches the terminal until the buffer is flushed
    try bw.flush();
}
