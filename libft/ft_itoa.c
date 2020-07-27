/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_itoa.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kbatwoma <kbatwoma@student.21-school.ru>   +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/05/07 16:48:02 by kbatwoma          #+#    #+#             */
/*   Updated: 2020/05/24 23:16:01 by kbatwoma         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static int	ft_size(long int n)
{
	int		count;
	long int		copy;

	count = 1;
	if (n < 0)
	{
		count++;
		n = -n;
	}
	copy = n;
	while ((copy) > 9)
	{
		count++;
		copy = copy / 10;
	}
	return (count);
}

static long int	ft_min(long int n, char *array)
{
	int		i;

	i = 0;
	if (n < 0)
	{
		array[i] = '-';
		n = -n;
	}
	return (n);
}

char		*ft_itoa(long int n)
{
	char	*array;
	int		size;

	size = ft_size(n);
	if (!(array = malloc(sizeof(*array) * (size + 1))))
		return (0);
	array[size] = '\0';
	size--;
	n = ft_min(n, array);
	while (n > 9)
	{
		array[size] = (n % 10) + '0';
		n = n / 10;
		size--;
	}
	array[size] = n + '0';
	return (array);
}
