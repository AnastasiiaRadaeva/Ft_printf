/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kbatwoma <kbatwoma@student.21-school.ru>   +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/06/25 12:05:37 by kbatwoma          #+#    #+#             */
/*   Updated: 2020/07/13 12:28:52 by kbatwoma         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */
#include "ft_printf.h"
#include "libft/libft.h"
# include <stdio.h>

void    *ft_free(char **str)
{
    free(*str);
    str = NULL;
    return NULL;
}

int     ft_strset(char *s, char c, size_t n)
{
    while (n != 0)
    {
        *(s + (n - 1)) = c;
        n--;
    }
    return (0);
}

char	*ft_insert(t_parser *flags, va_list arg)
{
	char *array;

	array = NULL;
	/*if (flags->type == 'c')
		array = ft_c_type(&flags, arg);
	if (flags->type == 's')
		array = ft_s_type(&flags, arg);
	if (flags->type == 'p')
		array = ft_p_type(&flags, arg);*/
	if (flags->type == 'd' || flags->type == 'i')
		array = ft_i_d_types(flags, arg);
	/*if (flags->type == 'u')
		array = ft_u_type(&flags, arg);
	if (flags->type == 'x' || flags->type == 'X')
		array = ft_x_X_types(&flags, arg);
	if (flags->type == '%')
		array = ft_percent_type(&flags, arg);*/
	return (array);
}

int	ft_printf(const char *str, ...)
{
	va_list		arg;
	int			length_str;
	char		*insert;
	t_parser	flags;

	length_str = 0;
	if (!str)
		return (0);
	va_start(arg, str);
	while (*str != '\0')
	{
		if (*str == '%')
		{
			str++;
			ft_parser(str, &flags, arg);
			if ((insert = ft_insert(&flags, arg)) == NULL)
                return (-1);
			length_str += write(1, insert, ft_strlen(insert));
			free(insert);
			str += flags.length;
		}
		if (*str != '\0')
			length_str += write(1, str++, 1);
	}
	va_end(arg);
	return (length_str);
}
