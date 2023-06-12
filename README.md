### Helpful Links

* https://buildyourownlisp.com/chapter4_interactive_prompt#read_evaluate_print - Helped me through the basics of using `readline` in a C program. For me, knowing how stuff should look in C is really helpful for making it work in Zig.
* https://andreasfertig.blog/2021/02/clang-and-gcc-on-macos-catalina-finding-the-include-paths/ - Helped me find an OS X include path on OS X that doesn't hard-code a version number. 
* https://zig.news/xq/zig-build-explained-part-2-1850 - Out of date on the details, but they pointed me in the right direction, e.g. the compiler error on `addIncludeDir` is a helpful deprecation messaage telling me to use `addIncludePath` instead, so all good. The Zig docs recommend `linkSystemLibrary` instead of `linkSystemLibraryName`.
