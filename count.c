#include <stdio.h>

int main (void)
{
	unsigned long x;

	for(x = 0; x < 1000000; x++)
		printf("%ld\n", x);

	return 0;
}
