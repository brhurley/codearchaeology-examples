const std = @import("std");

pub fn main() !void {
    const stdin = std.io.getStdIn().reader();
    const stdout = std.io.getStdOut().writer();

    try stdout.print("What is your name? ", .{});
    var name_buf: [64]u8 = undefined;
    const name_line = (try stdin.readUntilDelimiterOrEof(&name_buf, '\n')) orelse return;
    // Trim a trailing \r so the program also works with Windows line endings
    const name = std.mem.trimRight(u8, name_line, "\r");

    try stdout.print("What year were you born? ", .{});
    var year_buf: [16]u8 = undefined;
    const year_line = (try stdin.readUntilDelimiterOrEof(&year_buf, '\n')) orelse return;
    const year_str = std.mem.trimRight(u8, year_line, "\r");

    // Parsing can fail too - parseInt returns an error union
    const year = try std.fmt.parseInt(i32, year_str, 10);

    try stdout.print("Hello, {s}! You turn {d} in 2026.\n", .{ name, 2026 - year });
}
