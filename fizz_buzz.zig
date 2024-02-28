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
}

fn using_if_statement() !void {
	var count: u8 = 1;
	while (count <= 100): (count += 1) {
		if (count % 3 == 0 and count % 5 == 0) {
			try stdout.print("Fizz Buzz\n", .{});
		}
		else if (count % 3 == 0) {
			try stdout.print("Fizz\n", .{});
		}
		else if (count % 5 == 0) {
			try stdout.print("Buzz\n", .{});
		}
		else try stdout.print("{}\n", .{count});
	}
}


