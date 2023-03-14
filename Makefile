# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: javiersa <javiersa@student.42malaga.com>   +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/22 17:40:11 by javiersa          #+#    #+#              #
#    Updated: 2023/03/14 21:12:17 by javiersa         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = get_next_line.a
BONUS_NAME = get_next_line_bonus.a
CFLAGS = -Wall -Werror -Wextra
CC = gcc
CLEAN = rm -Rf
SRC = get_next_line.c get_next_line_utils.c
BONUS_SRC = get_next_line_bonus.c get_next_line_utils_bonus.c

OBJS := $(SRC:.c=.o)
BONUS_OBJS := $(BONUS_SRC:.c=.o)

all: $(NAME)
$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)
bonus: $(BONUS_NAME)
$(BONUS_NAME): $(BONUS_OBJS)
	ar rcs $(BONUS_NAME) $(BONUS_OBJS)
.c.o:
	$(CC) $(CFLAGS) -c $< -o ${<:.c=.o}
clean:
	$(CLEAN) ./$(OBJS) ./$(BONUS_OBJS)
fclean: clean
	$(CLEAN) ./$(NAME) ./$(BONUS_NAME)
re: fclean all

#Personal use
git: fclean gitignore
	git add *
	git commit -m "AUTOMATIC COMMIT"
	git push
	git ls-files
gitignore:
	echo ".*\n*.out\n*.o\n*.a">.gitignore
	

.PHONY : all clean fclean re bonus compile git gitignore