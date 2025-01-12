# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: pruenrua <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/08/10 20:55:46 by pruenrua          #+#    #+#              #
#    Updated: 2022/08/31 21:51:05 by pruenrua         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRC = ft_bzero.c ft_isdigit.c ft_memcpy.c ft_strlcpy.c ft_tolower.c ft_isalnum.c\
ft_isprint.c ft_memset.c ft_strlen.c ft_toupper.c ft_isalpha.c ft_memchr.c ft_memcmp.c\
ft_strchr.c ft_strncmp.c ft_isascii.c ft_strrchr.c ft_strdup.c ft_calloc.c\
ft_memmove.c ft_atoi.c ft_strnstr.c ft_strlcat.c ft_substr.c ft_strjoin.c ft_strtrim.c\
ft_split.c ft_itoa.c ft_strmapi.c ft_striteri.c\
ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c

BONUS = ft_lstnew.c ft_lstadd_front.c ft_lstadd_back.c ft_lstsize.c ft_lstlast.c\
ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c

B_OBJ = $(BONUS:.c=.o)

OBJ = $(SRC:.c=.o)

CC = gcc

CFLAG = -Wall -Werror -Wextra

%.o: %.c
	$(CC) $(CFLAG) -c $< -o $@ 

$(NAME) : all

all : $(OBJ)
	ar -rcs $(NAME) $(OBJ)

clean :
	rm -f $(OBJ) $(B_OBJ)

fclean : clean
	rm -f $(NAME)

re : fclean $(NAME)

bonus : $(OBJ) $(B_OBJ)
	ar -rcs $(NAME) $(OBJ) $(B_OBJ)

.PHONY: clean fclean all re bonus 
