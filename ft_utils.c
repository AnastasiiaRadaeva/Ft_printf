/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_utils.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kbatwoma <kbatwoma@student.21-school.ru>   +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/07/28 13:15:57 by kbatwoma          #+#    #+#             */
/*   Updated: 2020/07/28 13:56:22 by kbatwoma         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"
#include "libft/libft.h"

void	*ft_free(char **str)
{
	free(*str);
	str = NULL;
	return (NULL);
}

int		ft_strset(char *str, char c, size_t n)
{
	while (n != 0)
	{
		*(str + (n - 1)) = c;
		n--;
	}
	return (0);
}

char	*ft_insert(t_parser *flags, va_list arg)
{
	char	*array;

	array = NULL;
	if (flags->type == 'c')
		array = ft_c_type(flags, arg);
	if (flags->type == 's')
		array = ft_s_type(flags, arg);
	if (flags->type == 'p')
		array = ft_p_type(flags, arg);
	if (flags->type == 'i' || flags->type == 'd')
		array = ft_i_d_types(flags, arg);
	if (flags->type == 'u')
		array = ft_u_type(flags, arg);
	if (flags->type == 'x' || flags->type == 'X')
		array = ft_x_types(flags, arg, flags->type);
	if (flags->type == '%')
		array = ft_percent_type(flags);
	return (array);
}
