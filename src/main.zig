const std = @import("std");
const c = @cImport(@cInclude("editline/readline.h"));

pub fn main() !void {
    std.debug.print("in main\n", .{});
    //_ = c.add_history("foo");

    while (true) {
        const input = c.readline("Enter something (CTRL/C to stop)> ");
        _ = c.add_history(input);
    }

    //         printf("No you're a %s\n", input);
    //         free(input);
    //var i: i64 = c.add_in_c(3, 4);
    //std.debug.print("i == {d}\n", .{i});
}

test "simple test" {
    std.debug.print("in simple test\n", .{});
    //try std.testing.expectEqual(@as(i64, 7), c.add_in_c(3, 4));
}
