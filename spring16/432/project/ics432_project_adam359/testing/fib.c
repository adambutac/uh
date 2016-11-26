#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>

void *fib(void *i){
    if(*(double *)i <= 1){
        return i;
    }else{
        double x = *(double *)i - 1;
        double y = *(double *)i - 2;
        pthread_t *t = (pthread_t *)calloc(2, sizeof(pthread_t));
        pthread_create(t, NULL, fib, (void *)(&x));
        pthread_create(t+1, NULL, fib, (void *)(&y));
        pthread_join(*t, NULL);
        pthread_join(*(t+1), NULL);
        *(double *)i = x + y;
        return i;
    }
}

double main(){
    double i = 20;
    fprintf(stdout, "%d\n", *(double *)fib((void *)&i));  
}
