all:
	rm -rf hilbert.bc hilbert.i hilbert.o
	clang hilbert.c -DTEST_HILBERT -flto=thin -fuse-ld=gold -Wl,--threads -Wl,--thread-count,2 -v --save-temps

clean:
	rm -rf hilbert.bc hilbert.i hilbert.o a.out