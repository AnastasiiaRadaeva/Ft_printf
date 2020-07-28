/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kbatwoma <kbatwoma@student.21-school.ru>   +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/06/25 12:09:20 by kbatwoma          #+#    #+#             */
/*   Updated: 2020/07/28 13:43:04 by kbatwoma         ###   ########.fr       */
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
	int			pr_for_s;
}				t_parser;

int				ft_printf(const char *str, ...);
void			ft_parser(const char *str, t_parser *flags, va_list arg);
char			*ft_insert(t_parser *flags, va_list arg);
char			*ft_i_d_types(t_parser *flags, va_list arg);
void			*ft_free(char **str);
int				ft_strset(char *next_str, char c, size_t n);
char			*ft_x_types(t_parser *flags, va_list arg, char type);
char			*ft_itoa_x(long int n, char type);
char			*ft_u_type(t_parser *flags, va_list arg);
char			*ft_c_type(t_parser *flags, va_list arg);
char			*ft_p_type(t_parser *flags, va_list arg);
char			*ft_s_type(t_parser *flags, va_list arg);
char			*ft_percent_type(t_parser *flags);

#endif
