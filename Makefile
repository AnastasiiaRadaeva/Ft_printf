# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kbatwoma <kbatwoma@student.21-school.ru>   +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/06/24 10:40:54 by kbatwoma          #+#    #+#              #
#    Updated: 2020/06/25 12:11:12 by kbatwoma         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = clang
FLAGS = -Wall -Wextra -Werror

LIBFT = libft.a
LIBFT_DIR = libft/

NAME = libftprintf.a

MAIN_SRC = 
MAIN_HEADER = ft_printf.h
MAIN_OBJECTS = $(MAIN_SRC:.c=.o)

BONUS_SRC = ft_printf_bonus.c
BONUS_HEADER = ft_printf_bonus.h
BONUS_OBJECTS = $(MAIN_OBJECTS) $(BONUS_SRC:.c=.o)

ifdef BONUS
	OBJECTS = $(BONUS_OBJECTS)
	HEADER = $(BONUS_HEADER)
else
	OBJECTS = $(MAIN_OBJECTS)
	HEADER = $(MAIN_HEADER)
endif

all:$(NAME)

%.o: %.c HEADER
	@$(CC) $(FLAGS) -I $(MAIN_HEADER) -c $<

$(NAME): $(OBJECTS)
	@$(MAKE) -C $(LIBFT_DIR)
	@cp $(LIBFT_DIR)$(LIBFT) ./$(NAME)
	@ar rcs $@ $^
	@ranlib $@

bonus:
	@$(MAKE) BONUS=1 all

clean:
	@$(MAKE) clean -C $(LIBFT_DIR) 
	@rm -f $(BONUS_OBJECTS)

fclean: clean
	@rm -f $(NAME)
	@rm -f $(LIBFT_DIR)$(LIBFT)

re: fclean all

.PHONY: all clean fclean re bonus 