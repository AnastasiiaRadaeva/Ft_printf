/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_c_type.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kbatwoma <kbatwoma@student.21-school.ru>   +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/07/24 22:29:43 by kbatwoma          #+#    #+#             */
/*   Updated: 2020/07/24 22:30:01 by kbatwoma         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */
#include "ft_printf.h"
#include "libft/libft.h"

static char     *ft_width(char **str, int width, size_t flag, int len)
{
    char *next_str;

    if ((next_str = malloc(sizeof(char) * (width + len))) == 0)
        return (ft_free(str));
    ft_strset(next_str, ' ', width);
    if (len == 0)
    {
        next_str[width - 1] = '\0';
        return (next_str);
    }
    if (flag == 0)
	{
		next_str[0] = (*str)[0];
		next_str[width] = '\0';
	}
    else
        ft_strlcpy((next_str + (width - len)), *str, \
                    len + 1);
    ft_free(str);
    return (next_str);
}

char	*ft_c_type(t_parser *flags, va_list arg)
{
	unsigned char	symb;
	char	*str;
	int     len;

	len = 1;
	symb = (unsigned char)va_arg(arg, int);
	if (symb == '\0' || symb == NULL)
	    len = 0;
	if (!(str = malloc(sizeof(char) * 2)))
		return (NULL);
	str[0] = symb;
	str[1] = '\0';
	if (flags->width > 0)
        str = ft_width(&str, flags->width, flags->flag, len);
	return (str);
}

