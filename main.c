#include <stdio.h>
#include <stddef.h>
#include <unistd.h>
#include <errno.h>
#include <error.h>
#include <stdlib.h>
#include <string.h>

extern char  *ft_strcpy(char *restrict dst, const char *restrict src);
extern int	ft_strlen(const char *str);
extern ssize_t	ft_write(int fd, void *buffer, size_t n);

void	test_ft_strlen(char *arg)
{
	printf("TEST FT_STRLEN\n");
	printf("str = %s | len = %d\n", arg, ft_strlen(arg));
	printf("str = %s | real_len = %d\n", arg, ft_strlen(arg));
}

void	test_ft_strcpy(char *arg)
{
	char	*dest;
	char	*s1;
	char	*s2;

	dest = (char *)malloc(ft_strlen(arg) + 1);
	if (dest == NULL)
		return ;
	printf("dest = %p\n", dest);
	s1 = strcpy(dest, arg);
	printf("dst = %s | ptr_dest = %p\n", dest, s1);
	s2 = ft_strcpy(dest, arg);
	printf("dst = %s | ptr_dest = %p\n", dest, s2);
}

int	main(int argc, char **argv)
{
	if (argv[1] != NULL)
	{
		test_ft_strlen(argv[1]);
		test_ft_strcpy(argv[1]);
		printf("bytes = %ld | errno = %d\n", ft_write(-1, "Hello World\n", 13), errno);
		perror("write");
	}
	return (0);
	(void)argc;
}