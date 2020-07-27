/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_percent_type.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kbatwoma <kbatwoma@student.21-school.ru>   +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/07/26 16:43:18 by kbatwoma          #+#    #+#             */
/*   Updated: 2020/07/26 16:43:30 by kbatwoma         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */
#include "ft_printf.h"
#include "libft/libft.h"

static char    *ft_precision(int precision, char **str, size_t len_str)
{
    char    *next_str;

    if ((next_str = malloc(sizeof(char) * (precision + 1))) == 0)
        return (ft_free(str));
    ft_strlcpy(next_str, *str, precision + 1);
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
        ft_strset(next_str + ft_strlen(*str), ' ', \
				width - ft_strlen(*str));
        next_str[width] = '\0';
    }
    else
    {
        ft_strlcpy((next_str + (width - ft_strlen(*str))), *str, \
                    ft_strlen(*str) + 1);
        if (flag == 1)
            ft_strset(next_str, ' ', width - ft_strlen(*str));
        else
            ft_strset(next_str, '0', width - ft_strlen(*str));
    }
    ft_free(str);
    return (next_str);
}

char    *ft_percent_type(t_parser *flags)
{
	char	*str;
	if((str = malloc(sizeof(char) * 2)) == 0)
		return (NULL);
	str[0] = '%';
	str[1] = '\0';
	if (flags->width > 0)
	{
        if (flags->width > ft_strlen(str))
            str = ft_width(&str, flags->width, flags->flag);
        return (str);
    }
    if (flags->precision > ft_strlen(str) && flags->pr_for_s == 1)
        if ((str = ft_precision(flags->precision, &str, ft_strlen(str))) == NULL)
            return NULL;
    return (str);
}
