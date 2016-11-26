#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <omp.h>
#include <sys/time.h>

#define SIZE 50

double do_crazy_computation(int i,int j);

int main(int argc, char **argv) {
  double mat[SIZE][SIZE];
  double check[SIZE][SIZE];
  struct timeval start, end;
  double elapsed;

  omp_set_num_threads(2);
  gettimeofday(&start, NULL);

  #pragma omp parallel
    {
    #pragma omp sections
        {
        #pragma omp section
          {
          int a = SIZE/2;
          for (int i=0;i<a;i++) { /* loop over the rows */
            for (int j=0;j<SIZE;j++) {  /* loop over the columns */
              mat[i][j] = do_crazy_computation(i,j);
              fprintf(stderr,".");
            }
          }
        }
        #pragma omp section
          {
          int b = SIZE/2;
          for (int i=b;i<SIZE;i++) { /* loop over the rows */
            for (int j=0;j<SIZE;j++) {  /* loop over the columns */
              mat[i][j] = do_crazy_computation(i,j);
              fprintf(stderr,".");
            }
          }
        }
    }
  }

  gettimeofday(&end, NULL);
  elapsed = ((end.tv_sec*1000000.0 + end.tv_usec) -
            (start.tv_sec*1000000.0 + start.tv_usec)) / 1000000.00;
  printf("Elapsed time: %.2f seconds\n",elapsed);
  exit(0);
}

/* Crazy Computation */
double do_crazy_computation(int x,int y) {
   int iter;
   double value=0.0;

   for (iter = 0; iter < 5*x*x*x+1 + y*y*y+1; iter++) {
     value +=  (cos(x*value) + sin(y*value));
   }
  return value;
}

void generate(int** test){
  for (int i=0;i<SIZE;i++) { /* loop over the rows */
    for (int j=0;j<SIZE;j++) {  /* loop over the columns */
      test[i][j] = do_crazy_computation(i,j);
    }
  } 
}

void check(int** good, int** bad){
  for (int i=0;i<SIZE;i++) { /* loop over the rows */
    for (int j=0;j<SIZE;j++) {  /* loop over the columns */
      if(good[i][j] != bad[i][j])
          fprintf(stderr,"ERROR");
      else
          fprintf(stderr,".");
    }
  }
}
