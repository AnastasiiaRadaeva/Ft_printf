cmake_minimum_required(VERSION 3.16)
project(ft_printf_clion C)

set(CMAKE_C_STANDARD 90)

add_executable(ft_printf_clion main.c ft_printf.c ft_i_d_types.c ft_parser.c ft_printf.h libft/libft.h libft/ft_atoi.c libft/ft_itoa.c libft/ft_strlen.c libft/ft_strlcpy.c ft_x_X_types.c ft_itoa_x_X.c)