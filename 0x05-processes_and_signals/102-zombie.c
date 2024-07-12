#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

/* Function prototype */
int infinite_while(void);

int main(void)
{
	pid_t pid;
	int i;

	for (i = 0; i < 5; i++)
	{
		pid = fork();

		if (pid < 0)
		{
			perror("Fork failed");
			return (1);
		}
		else if (pid == 0)
		{
			/* Child process */
			printf("Zombie process created, PID: %d\n", getpid());
			exit(0); /* Child exits immediately, becoming a zombie */
		}
		else
		{
			/* Parent process */
			sleep(1); /* Let the child finish before spawning the next one */
		}
	}

	/* Parent process goes into an infinite loop */
	infinite_while();

	return (0);
}

/* Infinite loop function */
int infinite_while(void)
{
	while (1)
	{
		sleep(1);
	}
	return (0);
}
