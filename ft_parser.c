/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_parser.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kbatwoma <kbatwoma@student.21-school.ru>   +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/07/10 13:23:10 by kbatwoma          #+#    #+#             */
/*   Updated: 2020/07/28 13:08:38 by kbatwoma         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"
#include "libft/libft.h"

static const char	*flag(size_t *len, t_parser *flags, const char *str)
{
	flags->flag = 1;
	while (*str == '-' || *str == '0')
	{
		if (*str == '-')
			flags->flag = 0;
		else
			flags->flag = flags->flag * 2;
		(*len)++;
		str++;
	}
	return (str);
}

static const char	*width(size_t *len, t_parser *flags, const char *str, \
							va_list arg)
{
	flags->width = 0;
	if (*str == '*')
	{
		flags->width = va_arg(arg, int);
		if (flags->width < 0)
		{
			flags->flag = 0;
			flags->width = -flags->width;
		}
		str++;
		(*len)++;
	}
	else if (*str > '0' && *str <= '9')
	{
		flags->width = ft_atoi(str);
		while (*str >= '0' && *str <= '9')
		{
			str++;
			(*len)++;
		}
	}
	return (str);
}

static const char	*precision_extra(const char *str, t_parser *flags, \
									size_t *len)
{
	flags->precision = ft_atoi(str);
	if (flags->precision < 0)
	{
		flags->precision = 1;
		str++;
		(*len)++;
	}
	while (*str >= '0' && *str <= '9')
	{
		str++;
		(*len)++;
	}
	return (str);
}

static const char	*precision(size_t *len, t_parser *flags, const char *str,\
								va_list arg)
{
	flags->precision = 1;
	if (*str == '.')
	{
		flags->pr_for_s = 1;
		flags->precision = 0;
		str++;
		(*len)++;
		if (*str == '*')
		{
			flags->precision = va_arg(arg, int);
			if (flags->precision < 0)
			{
				flags->precision = 1;
				flags->pr_for_s = 0;
			}
			str++;
			(*len)++;
		}
		else if ((*str >= '0' && *str <= '9') || *str == '-')
			str = precision_extra(str, flags, len);
	}
	return (str);
}

void				ft_parser(const char *str, t_parser *flags, va_list arg)
{
	size_t	len;

	len = 0;
	flags->pr_for_s = 0;
	str = flag(&len, flags, str);
	str = width(&len, flags, str, arg);
	str = precision(&len, flags, str, arg);
	flags->type = *str;
	len++;
	flags->length = len;
}
