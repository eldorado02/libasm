NAME = libasm.a

SRC = ft_strlen.s ft_write.s ft_strcpy.s

CC = cc

CFLAGS = -Wall -Wextra -Werror

SRC_TEST = main.c

OBJ = ${SRC:.s=.o}

EXEC = a.out

all : ${NAME}

%.o : %.s
	nasm -f elf64 $< -o $@

${NAME} : ${OBJ}
	ar -rcs $@ ${OBJ}

test : ${EXEC}

${EXEC} : ${NAME} ${SRC}
	${CC} ${CFLAGS} ${SRC_TEST} -o $@ -L . -lasm

clean :
	${RM} ${OBJ}

fclean : clean
	${RM} ${NAME}
	${RM} ${EXEC}

re : fclean all

.PHONY : all clean fclean re