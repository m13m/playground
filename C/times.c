#include <sys/times.h>
#include <stdio.h>

int main(int argc, char const *argv[])
{
	struct tms app;

	printf("%Lf\n",app.tms_utime);
	printf("%Lf\n",app.tms_stime);
	printf("%Lf\n",app.tms_cutime);
	printf("%Lf\n",app.tms_cstime);
	//printf("%s\n", size((clock_t) -1 );

	return 0;



}


