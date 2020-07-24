/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_itoa_x_X.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kbatwoma <kbatwoma@student.21-school.ru>   +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/07/24 17:49:56 by kbatwoma          #+#    #+#             */
/*   Updated: 2020/07/24 17:50:09 by kbatwoma         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */
#include "ft_printf.h"

static int	ft_size(long int n)
{
	int		count;

	if (n < 0)
		return (8);
	if (n == 0)
		return (1);
	count = 0;
	while (n > 0)
	{
		n = n / 16;
		count++;
	}
	return (count);
}

static char ft_converter(long int n, char x)
{
	if (n >= 0 && n <= 9)
		return (n + '0');
	if (x == 'x')
		return (n + 87);
	else
		return (n + 55);
}

static int	ft_array(long int n, char *array, int index, char type)
{
	if (n < 0)
	{
		n = -n;
		array[index--] = ft_converter(16 - (n % 16), type);
		n = n / 16;
		while (n > 0)
		{
			array[index--] = ft_converter(15 - (n % 16), type);
			n = n / 16;
		}
		if (type == 'x')
			ft_strset(array, 'f', index + 1);
		else if (type == 'X')
			ft_strset(array, 'F', index + 1);
		return (0);
	}
	array[index--] = ft_converter(n % 16, type);
	n = n / 16;
	while (n > 0)
	{
		array[index--] = ft_converter(n % 16, type);
		n = n / 16;
	}
	return (0);
}

char		*ft_itoa_x_X(long int n, char type)
{
	char *array;
	int size;

	size = ft_size(n);
	if (!(array = malloc(sizeof(*array) * (size + 1))))
		return (0);
	array[size--] = '\0';
	ft_array(n, array, size, type);
	return (array);
}
