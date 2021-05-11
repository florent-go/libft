NAME = libft.a

OBJ = $(SRCS:.c=.o)

OBJBONUS = $(BONUS:.c=.o)

CFLAGS += -Wall -Wextra -Werror

SRCS =	ft_atoi.c \
		ft_isalpha.c \
		ft_isalnum.c \
    	ft_isascii.c \
    	ft_isdigit.c \
		ft_isprint.c \
        ft_strchr.c \
        ft_strdup.c \
        ft_strlcat.c \
        ft_strlen.c \
        ft_strncmp.c \
        ft_strnstr.c \
    	ft_strrchr.c \
    	ft_tolower.c \
        ft_toupper.c \
        ft_memset.c \
        ft_strlcpy.c \
        ft_bzero.c \
		ft_calloc.c \
		ft_memccpy.c \
		ft_memcpy.c \
		ft_memchr.c \
		ft_memcmp.c \
		ft_memmove.c \
		ft_putchar_fd.c \
		ft_putendl_fd.c \
		ft_putnbr_fd.c \
		ft_putstr_fd.c \
		ft_substr.c \
		ft_strjoin.c \
		ft_strcpy.c \
		ft_strcat.c \
		ft_itoa.c \
		ft_split.c \
		ft_strtrim.c \
		ft_strmapi.c \
		
BONUS = ft_lstnew.c \
		ft_lstsize.c \
		ft_lstlast.c \
		ft_lstadd_back.c \
		ft_lstadd_front.c \
		ft_lstdelone.c \
		ft_lstclear.c \
		ft_lstiter.c \
		ft_lstmap.c
		

$(NAME): $(OBJ)
		ar rcs $(NAME) $(OBJ) 

bonus : $(OBJ) $(OBJBONUS)
		ar rcs $(NAME) $(OBJ) $(OBJBONUS)

all: $(NAME)

clean:
		rm -f $(OBJ) $(OBJBONUS)

fclean: clean
		rm -f $(NAME)

norme:
	norminette -R CheckForbiddenSourceHeader $(SRCS)

re: fclean all

.PHONY : all clean fclean re
