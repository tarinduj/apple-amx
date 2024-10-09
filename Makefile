test: a.out
	./a.out

a.out: test.c emulate.h aarch64.h ldst.c extr.c fma.c fms.c genlut.c mac16.c matfp.c matint.c vecfp.c vecint.c
	gcc -O2 -g test.c ldst.c extr.c fma.c fms.c genlut.c mac16.c matfp.c matint.c vecfp.c vecint.c

perf: perf_kernels.py perf.c aarch64.h
	python3 perf_kernels.py
	gcc -O2 -g -o perf perf.c perf_kernels.c

transpose: transpose.o
	./transpose.o

transpose.o: transpose.c emulate.h aarch64.h tp_utils.h ldst.c extr.c fma.c fms.c genlut.c mac16.c matfp.c matint.c vecfp.c vecint.c
	gcc -O2 -g transpose.c ldst.c extr.c fma.c fms.c genlut.c mac16.c matfp.c matint.c vecfp.c vecint.c -o transpose.o

transpose.s: transpose.c emulate.h aarch64.h tp_utils.h ldst.c extr.c fma.c fms.c genlut.c mac16.c matfp.c matint.c vecfp.c vecint.c
	gcc -O2 -g transpose.c ldst.c extr.c fma.c fms.c genlut.c mac16.c matfp.c matint.c vecfp.c vecint.c -S 

transpose_scalar: transpose_scalar.o
	./transpose_scalar.o

transpose_scalar.o: transpose_scalar.c
	gcc -O2 -g transpose_scalar.c -o transpose_scalar.o

clean:
	rm -f a.out perf perf_kernels.c *.o *.s

.PHONY: test
