#include <stdio.h>
#include "ft_printf.h"

int main()
{
	int i;
	int c;

	/*printf("\n");
	i = printf("%11sHello %i me %i World\n", "printf: ", -5, 100);
	c = ft_printf("ft_printf: Hello %i me %i World\n", -5, 100);
	printf("\nLength printf: %i\nLength ft_: %i\n\n", i, c);*/

    printf("\n");
    i = printf("%11sHello %.i me %.7i World\n", "printf: ", -5, 100);
    c = ft_printf("ft_printf: Hello %.i me %.7i World\n", -5, 100);
    printf("\nLength printf: %i\nLength ft_: %i\n\n", i, c);


    /*i = printf("%11sHello %10i me %2i World\n", "printf: ", 5, 100);
    c = ft_printf("ft_printf: Hello %10i me %2i World\n", 5, 100);
    printf("\nLength printf: %i\nLength ft_: %i\n\n", i, c);*/

	return (0);
}