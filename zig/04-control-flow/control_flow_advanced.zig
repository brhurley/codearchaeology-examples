const std = @import("std");

pub fn main() void {
    // break and continue inside a loop
    var i: u32 = 0;
    while (i < 10) : (i += 1) {
        if (i % 2 == 0) continue; // skip even numbers
        if (i > 7) break; // stop once past 7
        std.debug.print("odd: {d}\n", .{i});
    }

    // labeled block: break out with a value
    const numbers = [_]i32{ 4, 8, 15, 16, 23, 42 };
    const first_big = blk: {
        for (numbers) |num| {
            if (num > 20) break :blk num;
        }
        break :blk -1;
    };
    std.debug.print("first > 20: {d}\n", .{first_big});

    // labeled continue to skip to the next outer iteration
    var pairs: u32 = 0;
    outer: for (0..3) |x| {
        for (0..3) |y| {
            if (x == y) continue :outer;
            pairs += 1;
        }
    }
    std.debug.print("counted pairs: {d}\n", .{pairs});
}
