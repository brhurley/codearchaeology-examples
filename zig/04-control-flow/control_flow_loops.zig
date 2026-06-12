const std = @import("std");

pub fn main() void {
    // while loop with a manual counter
    var i: u32 = 1;
    while (i <= 3) {
        std.debug.print("while: {d}\n", .{i});
        i += 1;
    }

    // while with a continue expression (runs after each iteration)
    var sum: u32 = 0;
    var n: u32 = 1;
    while (n <= 5) : (n += 1) {
        sum += n;
    }
    std.debug.print("sum 1..5 = {d}\n", .{sum});

    // for loop over an array of string slices
    const colors = [_][]const u8{ "red", "green", "blue" };
    for (colors) |color| {
        std.debug.print("color: {s}\n", .{color});
    }

    // for loop with an index using the 0.. range syntax
    for (colors, 0..) |color, index| {
        std.debug.print("{d} -> {s}\n", .{ index, color });
    }

    // for over an integer range
    for (0..3) |k| {
        std.debug.print("range: {d}\n", .{k});
    }
}
