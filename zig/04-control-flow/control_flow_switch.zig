const std = @import("std");

pub fn main() void {
    const day: u32 = 3;

    // switch used as a statement
    switch (day) {
        1 => std.debug.print("Monday\n", .{}),
        2 => std.debug.print("Tuesday\n", .{}),
        3 => std.debug.print("Wednesday\n", .{}),
        4, 5 => std.debug.print("Almost weekend\n", .{}),
        else => std.debug.print("Weekend\n", .{}),
    }

    // switch used as an expression with inclusive ranges
    const score: u32 = 85;
    const grade = switch (score) {
        90...100 => "A",
        80...89 => "B",
        70...79 => "C",
        60...69 => "D",
        else => "F",
    };
    std.debug.print("score {d} -> grade {s}\n", .{ score, grade });

    // switch matching multiple values in a single arm
    const ch: u8 = 'e';
    const kind = switch (ch) {
        'a', 'e', 'i', 'o', 'u' => "vowel",
        else => "consonant",
    };
    std.debug.print("'{c}' is a {s}\n", .{ ch, kind });
}
