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

	//precision
    /*printf("\n");
    i = printf("%11sHello %.i me %.3i World\n", "printf: ", -5, -10);
    c = ft_printf("ft_printf: Hello %.i me %.3i World\n", -5, -10);
    printf("\nLength printf: %i\nLength ft_: %i\n\n", i, c);*/

	//width
	printf("\n");
    i = printf("%11sHello %0-10i me %-10.8i World\n", "printf: ", 5, 100);
    c = ft_printf("ft_printf: Hello %0-10i me %-10.8i World\n", 5, 100);
    printf("\nLength printf: %i\nLength ft_: %i\n\n", i, c);

	return (0);
}