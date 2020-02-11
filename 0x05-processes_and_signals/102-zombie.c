#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>

/**
 * infinite_while - Infinite while
 *
 * Return: Always 0
 */
int infinite_while(void)
{
	while (1)
	{
		sleep(1);
	}
	return (0);
}

/**
 * main - zombie processes
 *
 * Return: Always 0
 */
int main(void)
{
	int i;
	pid_t child;

	for (i = 1; i <= 5; i++)
	{
		child = fork();
		if (child > 0)
			printf("Zombie process created, PID: %d\n", child);
		else
			exit(0);
	}
	infinite_while();
	return (0);
}
