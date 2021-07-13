#include <stdlib.h>
#include <stdio.h>
#define BUFSIZE 10

<<<<<<< HEAD
int main(int argc, char **argv) {
  FILE *fp;
  char scurr[BUFSIZE];
  long new, curr, incr, min = 0;

  /* An argument with an integer increment must be supplied */
  if (argc != 2 || (incr = strtol(argv[1], NULL, 10)) == 0) { return(1); }

  /* Retrieve the current brightness and increment it in the brightness file */
  if ((fp = fopen("/sys/class/backlight/intel_backlight/brightness", "r+")) 
      && fgets(scurr, BUFSIZE, fp)) {
    curr = strtol(scurr, NULL, 10);
    rewind(fp);
    new = curr + incr;
    if (new < min) { new = min; }
    fprintf(fp, "%ld\n", new);
    fclose(fp);
  } else { return(2); }

  return(0);
=======
int main(int argc, char **argv)
{
	FILE *fp;
	char scurr[BUFSIZE];
	long new, curr, incr, min = 0;

	/* An argument with an integer increment must be supplied */
	if (argc != 2 || !(incr = strtol(argv[1], NULL, 10))) return 1;

	/* Retrieve the current brightness and increment it in the brightness file */
	if ((fp = fopen("/sys/class/backlight/intel_backlight/brightness", "r+")) 
		&& fgets(scurr, BUFSIZE, fp)) {
		curr = strtol(scurr, NULL, 10);
		rewind(fp);
		new = curr + incr;
		if (new < min) new = min;
		fprintf(fp, "%ld\n", new);
		fclose(fp);
	} else return 2;

	return 0;
>>>>>>> cecb3e8dd633fd5ba597ad536ffabd0c5f29726e
}

