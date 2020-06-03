all:
	rm -rf main.bc main.i main.o
	clang main.c -flto -fuse-ld=gold -Wl,--threads -Wl,--thread-count,2 -v --save-temps

clean:
	rm -rf main.bc main.i main.o a.out