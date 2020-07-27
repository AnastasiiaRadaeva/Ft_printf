/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_i_types.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kbatwoma <kbatwoma@student.21-school.ru>   +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/07/09 17:16:55 by kbatwoma          #+#    #+#             */
/*   Updated: 2020/07/13 14:44:16 by kbatwoma         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"
#include "libft/libft.h"

static void	ft_flag_null(char *next_str, char **str, int width)
{
	ft_strlcpy(next_str, *str, ft_strlen(*str) + 1);
	ft_strset(next_str + ft_strlen(*str), ' ', width - ft_strlen(*str));
	next_str[width] = '\0';
}

static char    *ft_precision(int precision, int number, char **str, \
                                size_t len_str)
{
    int     index;
    char    *next_str;

    index = 0;
    if (number < 0)
        precision++;
    if ((next_str = malloc(sizeof(char) * (precision + 1))) == 0)
        return (ft_free(str));
    if (number < 0)
        next_str[index++] = '-';
    ft_strset((next_str + index), '0', precision - len_str);
    ft_strlcpy((next_str + (index + precision - len_str)), *str + index, \
                len_str + 1);
    ft_free(str);
    return (next_str);
}

static char     *ft_width(char **str, int width, size_t flag, int number)
{
    char *next_str;
    int index;

    index = 0;
    if ((next_str = malloc(sizeof(char) * (width + 1))) == 0)
        return (ft_free(str));
    if (flag == 0)
    	ft_flag_null(next_str, str, width);
    else
    {
        ft_strlcpy((next_str + (width - ft_strlen(*str))), *str, \
                    ft_strlen(*str) + 1);
        if (flag == 1)
            ft_strset(next_str, ' ', width - ft_strlen(*str));
        else
        {
			if (number < 0)
				next_str[index++] = '-';
			ft_strset(next_str + index, '0', width - ft_strlen(*str));
		}
    }
    ft_free(str);
    return (next_str);
}

char	*ft_i_d_types(t_parser *flags, va_list arg)
{
	int		number;
	char	*str;
	int     flag;

    flag = flags->flag;
	number = va_arg(arg, int);
	if ((str = ft_itoa(number)) == NULL)
        return (NULL);
	if (number == 0 && flags->precision == 0)
		str[0] = '\0';
	else if ((flags->precision > ft_strlen(str) || (flags->precision == ft_strlen(str) && number < 0)))
	    if ((str = ft_precision(flags->precision, number, &str, ft_strlen(str))) == NULL)
            return NULL;
	if (flags->width <= ft_strlen(str))
        return (str);
	else
	{
        if (flags->pr_for_s == 1 && flags->width > flags->precision && flags->flag != 0)
            flag = 1;
        str = ft_width(&str, flags->width, flag, number);
    }
	return (str);
}
