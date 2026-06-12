const std = @import("std");

pub fn main() void {
    const temperature: i32 = 18;

    // Basic if / else if / else
    if (temperature > 25) {
        std.debug.print("It's warm\n", .{});
    } else if (temperature >= 15) {
        std.debug.print("It's mild\n", .{});
    } else {
        std.debug.print("It's cold\n", .{});
    }

    // if used as an expression (Zig has no ternary operator)
    const a: i32 = 7;
    const b: i32 = 12;
    const max = if (a > b) a else b;
    std.debug.print("max = {d}\n", .{max});

    // if with an optional: capture the inner value when non-null
    const maybe_value: ?i32 = 42;
    if (maybe_value) |value| {
        std.debug.print("got value {d}\n", .{value});
    } else {
        std.debug.print("no value\n", .{});
    }
}
