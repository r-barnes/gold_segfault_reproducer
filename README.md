Reproduces a [gold linker bug](https://sourceware.org/bugzilla/show_bug.cgi?id=23607).

Bug is observed with clang-8 and clang-10 using `GNU gold (GNU Binutils for Ubuntu 2.34) 1.16` running on Lubuntu 20.04.

The `main.c` code is a simple "hello world".

The crash goes away if `-flto` is removed.