# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lcutjack <lcutjack@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/11/24 16:27:08 by lcutjack          #+#    #+#              #
#    Updated: 2019/04/20 16:32:49 by lcutjack         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
FLAGS = -Wall -Wextra -Werror
SLB = ft_memset.c ft_bzero.c ft_memcpy.c ft_memccpy.c ft_memmove.c ft_memchr.c \
	  ft_memcmp.c ft_strlen.c ft_strdup.c ft_strcpy.c ft_strncpy.c ft_strcat.c \
	  ft_strncat.c ft_strlcat.c ft_strchr.c ft_strrchr.c ft_strstr.c ft_atoi.c \
	  ft_strnstr.c ft_strcmp.c ft_strncmp.c ft_tolower.c ft_isalpha.c \
	  ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c ft_toupper.c \
	  ft_memalloc.c ft_memdel.c ft_strnew.c ft_strdel.c ft_strclr.c \
	  ft_striter.c ft_striteri.c ft_strmap.c ft_strmapi.c ft_strequ.c \
	  ft_strnequ.c ft_strsub.c ft_strjoin.c ft_strtrim.c ft_strsplit.c \
	  ft_itoa.c ft_putchar.c ft_putstr.c ft_putendl.c ft_putnbr.c \
	  ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c \
	  ft_lstnew.c ft_lstdelone.c ft_lstdel.c ft_lstadd.c ft_lstiter.c \
	  ft_lstmap.c ft_lstadd_into.c ft_lstsize.c ft_replace.c ft_rejoin.c \
	  ft_lstcpy.c ft_del.c
SPF = ft_basic.c ft_printf.c ft_t_csp.c ft_t_di.c ft_t_f.c ft_t_oux.c \
	what_type.c
SGNL = get_next_line.c
OBJ = $(SLB:.c=.o) $(SPF:.c=.o) $(SGNL:.c=.o)
PATH_LB = $(addprefix libc/, $(SLB))
PATH_GNL = $(addprefix gnl/, $(SGNL))
PATH_PF = $(addprefix printf/, $(SPF))
OLB = $(PATH_LB:.c=.o)
OPF = $(PATH_PF:.c=.o)
OGNL = $(PATH_GNL:.c=.o)
INC = libft.h get_next_line.h ft_printf.h

$(NAME):
	gcc $(FLAGS) -c $(PATH_LB) -I inc/
	gcc $(FLAGS) -c $(PATH_GNL) -I inc/
	gcc $(FLAGS) -c $(PATH_PF) -I inc/
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

all: $(NAME)
	# mkdir -p obj/
	# @make -C $(NAME)

clean:
	@rm -rf $(OBJ)

fclean: clean
	@rm -rf $(NAME)

re: fclean all
