const std = @import("std");

pub fn main() !void {
    // Create (or truncate) a file in the current directory
    const file = try std.fs.cwd().createFile("languages.txt", .{});
    defer file.close();

    // Write raw bytes directly
    try file.writeAll("Languages that influenced Zig:\n");

    // Or use the same writer interface as stdout
    const writer = file.writer();
    const influences = [_][]const u8{ "C", "C++", "Rust", "Go" };
    for (influences, 1..) |lang, i| {
        try writer.print("{d}. {s}\n", .{ i, lang });
    }

    std.debug.print("Wrote languages.txt\n", .{});
}
