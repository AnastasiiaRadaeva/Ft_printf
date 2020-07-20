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

static int	len_final_str(char *str, t_parser flags)
{
	int	len_str;

	len_str = ft_strlen(str);
	if (flags->precision > len_str || flags->width > len_str)
	{
		if(flags->precision > flags->width)
			len_str = flags->precision;
		else
			len_str = flags->width;
	}
	return (len_str);
}

char	*ft_i_d_types(t_parser *flags, va_list arg)
{
	int		number;
	char	*str;
	char	*final_str;
	int		len_final_str;
	int		len_str;
	int		index;

	index = 0;
	number = va_arg(arg, int);
	str = ft_itoa(number);
	//start
	len_str = ft_strlen(str);
	len_final_str = len_final_str(str, &flags);
	if (!(final_str = malloc(sizeof(*final_str) * (len_str + 1))))
		return (-1);
	//print_number
	if (flags->flag == 0)
	{
		if (number == 0 && flags->precision == 0)
		{
			len_str = 0;
			//дописать
		}
		else if (number < 0)
		{
			final_str[index++] = '-';
			if (flags->precision > len_str)
			{
				while (index != (flags->precision - len_str))
					final_str[index++] = '0';
				final_str[index++] = '0';
				ft_memcpy((final_str + index), (str + 1), ft_strlen(str));
				free(str);
				
			}


				
		}

	}

	/*if (number < 0 && flags->precision > (len_str - 1))
		len_str = flags->precision + 1; //не забыть, что минус нужно будет напечатать с самого начала
	else if (number == 0 && flags->precision == 0)
		len_str = 0;
	else if (flags->precision > len_str)
		len_str = flags->precision;*/


	

	




	return (final_str);
}
