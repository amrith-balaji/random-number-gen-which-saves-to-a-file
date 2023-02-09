# random-number-gen-which-saves-to-a-file
it ganerates random numbers and saves it to a file 
code:-
```
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define MIN 1
#define MAX 10
#define INTERVAL 100

int main() {
    int i;
    float num;
    FILE *fp;

    fp = fopen("random.dat", "w");
    if (fp == NULL) {
        printf("Error opening file!\n");
        return 1;
    }

    srand(time(0));
    for (i = 0; i < 10; i++) {
        num = MIN + (float) rand() / ((float) RAND_MAX / (MAX - MIN) ) ;
        //num = MIN + (float) rand() / ((float) RAND_MAX / (MAX - MIN) * INTERVAL) / INTERVAL;
        fprintf(fp, "%.2f\n", num);
        printf( "%.2f\n", num);
    }

    fclose(fp);
    return 0;
}
```
