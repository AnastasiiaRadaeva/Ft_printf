/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kbatwoma <kbatwoma@student.21-school.ru>   +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/06/25 12:05:37 by kbatwoma          #+#    #+#             */
/*   Updated: 2020/07/28 17:40:34 by kbatwoma         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"
#include "libft/libft.h"

static int	check(int width)
{
	if (width > 0)
		return (width);
	return (1);
}

static int	ft_ifperc(const char **str, t_parser *flags, va_list arg, \
						char **insert)
{
	int	strlen;
	int	length_str;

	length_str = 0;
	(*str)++;
	ft_parser(*str, flags, arg);
	if ((*insert = ft_insert(flags, arg)) == NULL)
		return (-1);
	strlen = (flags->type == 'c') ? check(flags->width) : ft_strlen(*insert);
	length_str += write(1, *insert, strlen);
	ft_free(insert);
	(*str) += flags->length;
	return (length_str);
}

int			ft_printf(const char *str, ...)
{
	va_list		arg;
	int			length_str;
	char		*insert;
	t_parser	flags;
	int			num;

	length_str = 0;
	if (!str)
		return (-1);
	va_start(arg, str);
	while (*str != '\0')
	{
		if (*str == '%')
		{
			if ((num = ft_ifperc(&str, &flags, arg, &insert)) == -1) //
			{
				va_end(arg);
				return (-1);
			}
			length_str += num;
		}
		if (*str != '\0' && *str != '%')
			length_str += write(1, str++, 1);
	}
	va_end(arg);
	return (length_str);
}
