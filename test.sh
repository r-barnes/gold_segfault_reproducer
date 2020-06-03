#!/bin/bash
set -ex

rm -f test_*.exe
for i in {1..10}; do
  clang -o test_$i.exe hilbert.c -DTEST_HILBERT -flto=thin -fuse-ld=gold -Wl,--threads -Wl,--thread-count,2 -v --save-temps
done

sha1sum test_*.exe