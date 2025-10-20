#include <stdio.h>
#include <stddef.h>
#include <unistd.h>
#include <errno.h>
#include <error.h>

extern int	ft_strlen(const char *str);
extern ssize_t	ft_write(int fd, void *buffer, size_t n);

int	main(int argc, char **argv)
{
	if (argv[1] != NULL)
	{
		printf("str = %s | len = %d\n", argv[1], ft_strlen(argv[1]));
		// printf("bytes = %ld | errno = %d\n", write(-1, "Hello World\n", 13), errno);
		// perror("write");
		// errno = 0;
		printf("bytes = %ld | errno = %d\n", ft_write(-1, "Hello World\n", 13), errno);
		perror("write");
	}
	return (0);
}