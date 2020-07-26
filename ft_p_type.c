/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_s_type.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kbatwoma <kbatwoma@student.21-school.ru>   +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/07/25 13:48:19 by kbatwoma          #+#    #+#             */
/*   Updated: 2020/07/25 13:48:37 by kbatwoma         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */
#include "ft_printf.h"
#include "libft/libft.h"

static char    *ft_precision(int precision, char **str, size_t len_str)
{
	char    *next_str;

	if ((next_str = malloc(sizeof(char) * (precision + 1))) == 0)
		return (ft_free(str));
	ft_strset(next_str, '0', precision - len_str);
	ft_strlcpy((next_str + precision - len_str), *str, len_str + 1);
	ft_free(str);
	return (next_str);
}

static char     *ft_width(char **str, int width, size_t flag)
{
	char *next_str;

	if ((next_str = malloc(sizeof(char) * (width + 1))) == 0)
		return (ft_free(str));
	if (flag == 0)
	{
		ft_strlcpy(next_str, *str, ft_strlen(*str) + 1);
		ft_strset(next_str + ft_strlen(*str), ' ', width - ft_strlen(*str));
		next_str[width] = '\0';
	}
	else
	{
		ft_strlcpy((next_str + (width - ft_strlen(*str))), *str, \
                    ft_strlen(*str) + 1);
        ft_strset(next_str, ' ', width - ft_strlen(*str));
	}
	ft_free(str);
	return (next_str);
}

static char *ft_point(char *str)
{
	char *next_str;

	if ((next_str = malloc(sizeof(char) * (ft_strlen(str) + 3))) == 0)
		return (ft_free(&str));
	ft_strlcpy(next_str + 2, str, ft_strlen(str) + 1);
	next_str[0] = '0';
	next_str[1] = 'x';
	ft_free(&str);
	return (next_str);
}

static char *ft_null(void)
{
	char *str;

	if ((str = ft_strdup("(nil)")) == 0)
		return (NULL);
	return (str);
}

char	*ft_p_type(t_parser *flags, va_list arg)
{
	long int		number;
	char	*str;

	number = va_arg(arg, unsigned long int);
	if (number == 0 || (void *) number == NULL)
	{
		if ((str = ft_null()))
			return (str);
		else
			return (NULL);
	}
	if ((str = ft_itoa_x_X(number, 'x')) == NULL)
		return (NULL);
	if (flags->precision > ft_strlen(str))
		if ((str = ft_precision(flags->precision, &str, ft_strlen(str))) == NULL)
			return NULL;
	if ((str = ft_point(str)) == 0)
		return (NULL);
	if (flags->width <= ft_strlen(str))
		return (str);
	else
		str = ft_width(&str, flags->width, flags->flag);
	return (str);
}
