cmake_minimum_required(VERSION 3.16)
project(ft_printf_clion C)

set(CMAKE_C_STANDARD 90)

add_executable(ft_printf.c ft_c_type.c ft_i_d_types.c ft_itoa_x.c ft_printf.c ft_parser.c ft_percent_type.c ft_printf.h ft_s_type.c ft_u_type.c ft_x_X_types.c libft/ft_itoa.c libft/ft_atoi.c libft/ft_strlen.c libft/ft_strlcpy.c libft/ft_strdup.c ft_p_type.c main_chemelin.c ft_utils.c)