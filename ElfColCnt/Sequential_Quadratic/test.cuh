#include <stdlib.h>
#include <stdio.h>
#include <time.h>

#include "ElfColCnt.cuh"

int test_count(int3 *vector, int size, int iters){
	int i, res;

	int beg = clock();
	for(i = 0; i < iters; i++){
		res = count_collisions(vector, size);
	}

	printf("Elapsed: %lf ms\n", (clock() - beg) / (double) CLOCKS_PER_SEC * 1000);
	printf("Collisions [Sequential]: %d\n", res);

	return res;
}
