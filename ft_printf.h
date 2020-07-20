/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kbatwoma <kbatwoma@student.21-school.ru>   +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/06/25 12:09:20 by kbatwoma          #+#    #+#             */
/*   Updated: 2020/07/11 10:44:10 by kbatwoma         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */
#ifndef FT_PRINTF_H
# define FT_PRINTF_H
# include <stdarg.h>
# include <stdlib.h>
# include <unistd.h>

typedef struct	s_parser
{
	size_t		flag;
	int			width;
	int			precision;
	char		type;
	size_t		length;
}				t_parser;

int				ft_printf(const char *str, ...);
void			ft_parser(const char *str, t_parser *flags, va_list arg);
char			*ft_insert(t_parser *flags, va_list arg);
char            *ft_i_d_types(t_parser *flags, va_list arg);
void            *ft_free(char **str);
int             ft_strset(char *next_str, char c, size_t n);

#endif
