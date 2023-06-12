const std = @import("std");
const c_el = @cImport(@cInclude("editline/readline.h"));
const c_std = @cImport(@cInclude("stdlib.h"));

pub fn main() !void {
    while (true) {
        const input: [*c]u8 = c_el.readline("Enter something (CTRL/C to stop)> ");
        say_hello(input);
        _ = c_el.add_history(input);
        c_std.free(input);
    }
}

fn say_hello(input: [*c]u8) void {
    std.debug.print("Hello, {s}!\n", .{input});
}
