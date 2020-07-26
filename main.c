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
	/*printf("\n");
    i = printf("%11sHello %020x me %010X World\n", "printf: ", -5, 100);
    c = ft_printf("ft_printf: Hello %020x me %010X World\n", -5, 100);
    printf("\nLength printf: %i\nLength ft_: %i\n\n", i, c);*/

	//u
	/*printf("\n");
	i = printf("%11sHello %.u me %010u World\n", "printf: ", -5, 100);
	c = ft_printf("ft_printf: Hello %.u me %010u World\n", -5, 100);
	printf("\nLength printf: %i\nLength ft_: %i\n\n", i, c);*/

	//p
	int b;
	b = 0;
	int *p;
	p = &b;
	printf("\n");
	i = printf("%11sHello %p me %-20p World\n", "printf: ", NULL, p);
	c = ft_printf("ft_printf: Hello %p me %-20p World\n", NULL, p);
	printf("\nLength printf: %i\nLength ft_: %i\n\n", i, c);

	//c
	/*printf("\n");
	i = printf("%11sHello %-.7c me %-010c World\n", "printf: ", NULL, 'f');
	c = ft_printf("ft_printf: Hello %-.7c me %-010c World\n", NULL, 'f');
	printf("\nLength printf: %i\nLength ft_: %i\n\n", i, c);*/

	//s
	/*printf("\n");
	i = printf("%11sHello %20s me %-15.4s World\n", "printf: ", NULL, "");
	c = ft_printf("ft_printf: Hello %20s me %-15.4s World\n", NULL, "");
	printf("\nLength printf: %i\nLength ft_: %i\n\n", i, c);*/

	//%
	/*printf("\n");
	i = printf("%11sHello %.10% me %*% World\n", "printf: ", 100);
	c = ft_printf("ft_printf: Hello %.10% me %*% World\n", 100);
	printf("\nLength printf: %i\nLength ft_: %i\n\n", i, c);*/

	return (0);
}