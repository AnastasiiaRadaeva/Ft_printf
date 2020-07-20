/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_i_d_types.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kbatwoma <kbatwoma@student.21-school.ru>   +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/07/09 17:16:55 by kbatwoma          #+#    #+#             */
/*   Updated: 2020/07/13 14:44:16 by kbatwoma         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"
#include "libft/libft.h"

static char    *ft_precision(int precision, int number, char **str, \
                                size_t len_str)
{
    int     index;
    char    *next_str;

    index = 0;
    if (number < 0)
        precision++;
    if ((next_str = malloc(sizeof(char *) * (precision + 1))) == 0)
        return (ft_free(str));
    if (number < 0)
    {
        next_str[index] = *str[index];
        index++;
    }
    ft_strset(next_str + index, '0', precision - len_str - 1);
    ft_strlcpy((next_str + index + (precision - len_str - 1)), *str + index, \
                len_str + 1);

    ft_free(str);
    return (next_str);
}

static char     *ft_width(char **str, int width, size_t flag)
{
    char *next_str;

    if ((next_str = malloc(sizeof(char *) * (width + 1))) == 0)
        return (ft_free(str));
    if (flag == 0)
        ft_strlcpy(next_str, *str, ft_strlen(*str));
    else
    {
        ft_strlcpy((next_str + (width - ft_strlen(*str))), *str, \
                    ft_strlen(*str));
        if (flag == 1)
            ft_strset(next_str, ' ', width - ft_strlen(*str));
        else
            ft_strset(next_str, '0', width - ft_strlen(*str));
    }
    ft_free(str);
    return (next_str);
}

char	*ft_i_d_types(t_parser *flags, va_list arg)
{
	int		number;
	char	*str;
	size_t	len_str;

	if (!(number = va_arg(arg, int)))
        return (NULL);
	if ((str = ft_itoa(number)) == 0)
        return (NULL);
	len_str = ft_strlen(str);
	if (number < 0)
        len_str--;
	if (flags->precision > len_str)
	    if((str = ft_precision(flags->precision, number, &str, len_str)) == NULL)
            return NULL;
	if (flags->width <= ft_strlen(str))
        return (str);
	else
        str = ft_width(&str, flags->width, flags->flag);
	return (str);
}
