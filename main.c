#include <stdio.h>
#include "ft_printf.h"

int main()
{
	int i;
	int c;

	printf("\n");
	i = printf("%11sHello %0*% me %i World\n", "printf: ", 5, 100);
	c = ft_printf("ft_printf: Hello %i me %i World\n", -28, 100);
	printf("\nLength printf: %i\nLength ft_: %i\n\n", i, c);

	return (0);
}