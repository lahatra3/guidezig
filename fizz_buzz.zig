const std = @import("std");
const stdout = std.io.getStdOut().writer();

pub fn main() !void {
    try stdout.print(
        \\Hello lahatrad
        \\
    , .{});
    try stdout.print(
        \\
        \\******* USING IF STATEMENT *******
        \\
    , .{});
    try using_if_statement();

    try stdout.print(
        \\
        \\******* USING SWITCH STATEMENT *******
        \\
    , .{});
    try using_switch_statement();

    try stdout.print(
        \\
        \\******* USING BITEWISE OPERATION *******
        \\
    , .{});
    try using_bitewise_operation();
}

fn using_if_statement() !void {
    var count: u8 = 1;
    while (count <= 100) : (count += 1) {
        if (count % 3 == 0 and count % 5 == 0) {
            try stdout.print("Fizz Buzz\n", .{});
        } else if (count % 3 == 0) {
            try stdout.print("Fizz\n", .{});
        } else if (count % 5 == 0) {
            try stdout.print("Buzz\n", .{});
        } else try stdout.print("{}\n", .{count});
    }
}

fn using_switch_statement() !void {
    var count: u8 = 1;
    while (count <= 100) : (count += 1) {
        const div_3: u2 = @intFromBool(count % 3 == 0);
        const div_5 = @intFromBool(count % 5 == 0);

        switch (div_3 * 2 + div_5) {
            0b00 => try stdout.print("{}\n", .{count}),
            0b01 => try stdout.print("Buzz\n", .{}),
            0b10 => try stdout.print("Fizz\n", .{}),
            0b11 => try stdout.print("Fizz Buzz\n", .{}),
        }
    }
}

fn using_bitewise_operation() !void {
    var count: u8 = 1;
    while (count <= 100) : (count += 1) {
        const div_3: u2 = @intFromBool(count % 3 == 0);
        const div_5 = @intFromBool(count % 5 == 0);

        switch (div_3 << 1 | div_5) {
            0b00 => try stdout.print("{}\n", .{count}),
            0b01 => try stdout.print("Buzz\n", .{}),
            0b10 => try stdout.print("Fizz\n", .{}),
            0b11 => try stdout.print("Fizz Buzz\n", .{}),
        }
    }
}
