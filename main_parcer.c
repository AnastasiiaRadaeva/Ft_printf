# include "ft_printf.h"
# include "libft/libft.h"
# include <stdio.h>

static void	ft_test(char *str, ...)
{
	va_list	arg;
	t_parser flags;

	va_start(arg, str);
	ft_parser(str, &flags, arg);
	printf("flag: %zu\n", flags.flag);
	printf("width: %i\n", flags.width);
	printf("precision: %i\n", flags.precision);
	printf("type: %c\n", flags.type);
	printf("length: %zu\n", flags.length);
	va_end(arg);
}

int main()
{
	ft_test("9.i");
	return 0;
}
