##
## EPITECH PROJECT, 2018
## Makefile
## File description:
## Makefile
##

NAME	=	libasm.so

CFLAGS	=	-Wall -Wextra

all:	$(NAME)

$(NAME):	$(OBJ)
	nasm -f elf64 src/strlen.asm
	nasm -f elf64 src/strchr.asm
	nasm -f elf64 src/memset.asm
	nasm -f elf64 src/memcpy.asm
	nasm -f elf64 src/strcmp.asm
	nasm -f elf64 src/memmove.asm
	nasm -f elf64 src/strncmp.asm
	nasm -f elf64 src/strstr.asm
	nasm -f elf64 src/strcspn.asm
	ld -shared -o $(NAME) src/*.o

clean:
	-rm src/*.o

fclean:	clean
	-rm $(NAME)

re:	fclean all

.PHONY:	all clean fclean re
