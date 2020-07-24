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

char	*ft_c_type(t_parser *flags, va_list arg)
{
	char	symb;
	char	*str;

	symb = va_arg(arg, int);
	if (!(str = malloc(sizeof(char) * 2)))
		return (NULL);
	str[0] = symb;
	str[1] = '\0';
	if (flags->width > 1)
        str = ft_width(&str, flags->width, flags->flag);
	return (str);
}

