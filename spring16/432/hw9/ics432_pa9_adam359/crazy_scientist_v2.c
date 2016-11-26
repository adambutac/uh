#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <omp.h>
#include <sys/time.h>

#define SIZE 50

double do_crazy_computation(int i,int j);
double standard_deviation(double vals[], int length);
double average(double vals[], int length);
double max_deviation(double vals[], int length);

int main(int argc, char **argv) {
  int i,j;
  int numthreads = 2;
  double mat[SIZE][SIZE];
  double check[SIZE][SIZE];
  struct timeval start[numthreads+1], end[numthreads+1];
  double elapsed[numthreads+1];
  int half = SIZE/2;
  omp_set_num_threads(numthreads);
  gettimeofday(&start[2], NULL);

  #pragma omp parallel private(i,j) 
    {
      int t = omp_get_thread_num();
      gettimeofday(&start[t], NULL);
      #pragma omp for nowait schedule(static)
        for (i=0;i<SIZE;i++) { /* loop over the rows */
          for (j=0;j<SIZE;j++) {  /* loop over the columns */
            mat[i][j] = do_crazy_computation(i,j);
            fprintf(stderr,".");
          }
        }
      gettimeofday(&end[t], NULL);
    }

  gettimeofday(&end[2], NULL);
  for(int thread=0; thread < numthreads + 1; thread++){
      elapsed[thread] = ((end[thread].tv_sec*1000000.0 + end[thread].tv_usec) -
            (start[thread].tv_sec*1000000.0 + start[thread].tv_usec)) / 1000000.00;
      if(thread < numthreads)
          printf("\nThread #%d Execution time: %.2f seconds",thread, elapsed[thread]);
  }
  double av = average(elapsed, numthreads);
  double max_dev = max_deviation(elapsed, numthreads);
  double std_dev = standard_deviation(elapsed, numthreads);
  printf("\nOverall execution time: %.2f seconds\n",elapsed[2]);
  printf("Load imbalance: %.2f%\n", (max_dev/av)*100.0);
  //printf("Average: %.2f\n", av);
  //printf("Standard Diviation: %.2f\n", std_dev);
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

double average(double vals[], int length){
    double sum = 0;
    for(int i = 0; i < length; i++){
        sum += vals[i];
    }
    sum /= length;
    return sum;
}

double standard_deviation(double vals[], int length){
    double av = average(vals, length);
    double sum = 0;
    double value = 0;
    for(int i = 0; i < length; i++){
       value = vals[i] -  av;
       value *= value;
       sum += value;
    }
    sum /= length;
    return sqrt(sum);
}

double max_deviation(double vals[], int length){
    double av = average(vals, length);
    double max = 0;
    double value = 0;
    for(int i = 0; i < length; i++){
       value = fabs(vals[i] -  av);
       if(value > max){
            max = value;
       }
    }
    return max;
}
