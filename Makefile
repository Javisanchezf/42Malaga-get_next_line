# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: javiersa <javiersa@student.42malaga.com>   +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/22 17:40:11 by javiersa          #+#    #+#              #
#    Updated: 2023/03/29 21:37:53 by javiersa         ###   ########.fr        #
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
.c.o:
	@$(CC) $(CFLAGS) -c $< -o ${<:.c=.o}

all: $(NAME)

bonus: $(BONUS_OBJS)
	@ar rcs $(NAME) $(BONUS_OBJS)
	@echo "$(GREEN)$(PERSONALNAME)_bonus -> Objects and library created successfully.$(DEFAULT)"
$(NAME): $(OBJS)
	@ar rcs $(NAME) $(OBJS)
	@echo "$(GREEN)$(PERSONALNAME) -> Objects and library created successfully.$(DEFAULT)"
clean:
	@$(CLEAN) ./$(OBJS) ./$(BONUS_OBJS)
	@echo "$(RED)$(PERSONALNAME) -> Objects files deleted.$(DEFAULT)"
fclean:
	@$(CLEAN) ./$(OBJS) ./$(BONUS_OBJS)
	@$(CLEAN) ./$(NAME)
	@echo "$(RED)$(PERSONALNAME) -> Library and objects files deleted.$(DEFAULT)"
re: fclean all

#Personal use
git: fclean gitignore
	git add *
	git commit -m "AUTOMATIC COMMIT"
	git push
	git ls-files
gitignore:
	@echo ".*\n*.out\n*.o\n*.a">.gitignore
	@echo "$(GREEN)Gitignore created successfully.$(DEFAULT)"

.PHONY : all clean fclean re bonus compile git gitignore

#COLORS
RED = \033[1;31m
GREEN = \033[1;32m
YELLOW = \033[1;33m
DEFAULT = \033[0m