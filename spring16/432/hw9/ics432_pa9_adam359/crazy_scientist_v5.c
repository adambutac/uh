#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <omp.h>
#include <sys/time.h>
#include <pthread.h>

#define SIZE 10

struct work_args {
    pthread_mutex_t *mutex;
    struct timeval *start;
    struct timeval *end;
    double ***matrix;
    int *row;
    int id; 
};


double do_crazy_computation(int i,int j);
double standard_deviation(double vals[], int length);
double average(double vals[], int length);
double max_deviation(double vals[], int length);
void *do_work(void *arg);
void check_work(double *check[]);

int main(int argc, char **argv) {
  int row = 0;
  int numthreads = 2;
  double mat[SIZE][SIZE];
  struct timeval start[numthreads+1], end[numthreads+1];
  double elapsed[numthreads+1];
  int half = SIZE/2;
  gettimeofday(&start[2], NULL);

  //make threads do work
  pthread_mutex_t mutex;
  pthread_mutex_init(&mutex, NULL);
  struct work_args args[numthreads];
  pthread_t *threads = (pthread_t *)calloc(numthreads, sizeof(pthread_t));

  for(int i = 0; i < numthreads; i++){
    args[i].row = &row; 
    args[i].mutex = &mutex;
    args[i].id = i;
    args[i].start = &start[i];
    args[i].end = &end[i];
    args[i].matrix = &mat;
    if(pthread_create(&threads[i], NULL, do_work, (void*)(&args[i]))){
      fprintf(stderr, "Error creating thread, exiting...");
      exit(1);
    }
  }

  for(int i = 0; i < numthreads; i++){
    pthread_join(threads[i], NULL);
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
  for(int i = 0; i < SIZE; i++){
    for(int j = 0; j < SIZE; j++){
        check_work("%.2f",mat[i][j]);
    }
  }
  exit(0);
}

void *do_work(void *arg){
    struct work_args *args = (struct work_args*)arg;
    pthread_mutex_t *mutex = args->mutex;
    struct timeval *start = args->start;
    struct timeval *end = args->end;
    double **matrix = *(args->matrix);
    int *row = args->row; 
    int t = args->id; 
    int i = t;

    gettimeofday(start, NULL);
    while(i < SIZE) { /* loop over the rows */
      for (int j=0;j<SIZE;j++) {  /* loop over the columns */
        (matrix+(i))[j] = do_crazy_computation((i),j);
        fprintf(stderr,".");
      }
      pthread_mutex_lock(mutex);
      i = (*row)++;
      pthread_mutex_unlock(mutex);
    }
    gettimeofday(end, NULL);
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

void check_work(double *check[]){
  int e = 0.00000001;
  for (int i=0;i<SIZE;i++) { /* loop over the rows */
    for (int j=0;j<SIZE;j++) {  /* loop over the columns */
      if(fabs(do_crazy_computation(i,j) -  **(check+(i*j))) > e)
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
