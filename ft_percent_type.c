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

char *ft_percent_type(void)
{
	char	*str;
	if((str = malloc(sizeof(char) * 2)) == 0)
		return (NULL);
	str[0] = '%';
	str[1] = '\0';
	return (str);
}
