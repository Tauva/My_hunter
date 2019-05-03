NAME	=	my_hunter

CC	=	gcc -g3 -lcsfml-graphics -lcsfml-window -lcsfml-system -lcsfml-audio

RM	= 	rm -f

SRCS	=	./Ressource/Files/test.c	\


OBJS	= 	$(SRCS:.c=.o)

CFLAGS = 	-I ./
CFLAGS += 	-W -Wall -Wextra

all: $(NAME)

$(NAME): $(OBJS)
	 $(CC) $(OBJS) -o $(NAME) $(LDFLAGS)

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re
