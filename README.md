# zig_with_system_library

A simple example of using a system library in a Zig project. Here, it's the `editline` library on `OS X`.

Don't take my actual code in `main.zig` seriously. This is just a plumbing project, with these goals:

* Can I code up something simple that calls into a system library?
* Can I get it to build?
* When I `zig build run` it, does it seem to be working?

For those goals, this works with zig version 0.11.0-dev. But I've just started looking into Zig/C intergration, and I'm probably doing all sorts of things wrong.

The plumbing details are in `build.zig`. Look for

```zig
 exe.addIncludePath("Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include");
    exe.linkSystemLibrary("edit");
```

### Helpful Links

* [How to use `readline` in a C program on OS X.](https://buildyourownlisp.com/chapter4_interactive_prompt#read_evaluate_print)
* [How to find the include path on OS X.](https://andreasfertig.blog/2021/02/clang-and-gcc-on-macos-catalina-finding-the-include-paths/)
* [Zig build explained.](https://zig.news/xq/zig-build-explained-part-2-1850) - Out of date, but still good for background.
