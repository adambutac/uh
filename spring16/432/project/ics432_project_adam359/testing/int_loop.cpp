#include <sys/time.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <pthread.h>
#include <signal.h>
#include <unistd.h>



struct pack{
    struct timeval time;
    pthread_mutex_t *lock;
    pthread_cond_t *done;
    int MAX_TIME;
    long int END;
};

void *loop_int(void* args){
    pack *pck = (pack *)args;
    pthread_mutex_lock(pck->lock);
    int j = 0;
    for(int i = 0; i < pck->END; i++){
        j = i * 3;    
    }
    gettimeofday(&(pck->time),NULL);
    fprintf(stdout,"%d\n",j);
    pthread_mutex_unlock(pck->lock);
    pthread_cond_signal(pck->done);
}

void *loop_float(void *args){
    pack *pck = (pack *)args;
    float d = 3;
    while(d < pck->END){
        d = d *3;
    }
    gettimeofday(&(pck->time),NULL);
}
/*
double loop_double(){
    double d = 3;
    while(d <->END){
        d = d *3;
    }
    fprintf(stdout,"%f\n",d);
}

long loop_long(){
    long l = 3;
    while(l <->END){
        l = l*3;
    }
    fprintf(stdout,"%li\n",l);
}

long int loop_long_int(){
    long int li = 3;
    while(li <->END){
       li = li*3;
    }
    fprintf(stdout, "%li\n",li);
}
*/

int overshootComputations(int *inc, pthread_t *worker, pack *pck){
    bool finish = false;

    while(finish != true){
        pthread_create(worker, NULL, loop_int,(void *)pck);
        fprintf(stdout, "Trying %li\n", pck->END);
        sleep(pck->MAX_TIME);
        if(pthread_kill(*worker, 0) == 0){
            pthread_cancel(*worker);
            finish = true;
            fprintf(stdout, "Overshot at %li\n", pck->END);
        }else{
            pthread_join(*worker, NULL);
            *inc = *inc*2;
            pck->END = *inc;
        }
    }
}

int findMaxComputationsInTime(int *inc, pthread_t *worker, pack *pck, struct timeval vor, struct timeval nach){
    double EPSILON = 0.01;
    bool finish = false;
    double verstrichene_zeit;

    while(finish != true){
        if(*inc > 1) *inc = *inc/2;
        gettimeofday(&vor,NULL);
        pthread_create(worker, NULL, loop_int,(void *)pck);
        pthread_cond_wait(pck->done, pck->lock);

        if//time is less than something(){
            pthread_cancel(*worker);
            
            pthread_join(*worker, NULL);
            pck->END = pck->END - *inc;
        }else{
            pthread_join(*worker, NULL);
            verstrichene_zeit = (1000000.0*(nach.tv_sec - vor.tv_sec) + 
                                            (nach.tv_usec - vor.tv_usec))/1000000.0;
            if(fabs(verstrichene_zeit - pck->MAX_TIME) < EPSILON){
                finish = true;
                fprintf(stdout,"Finished. %d\n", pck->END);
                fprintf(stdout,"Time = %f\n", verstrichene_zeit);
                return(0);
            }else{
                pck->END = pck->END + *inc;
            }
        }
        fprintf(stdout,"Finding value... %li\n", pck->END);
    }
}

int main(){
    struct timeval vor, nach;
    bool finish = false;
    int inc = 2;

    pthread_mutex_t lock; 
    pthread_cond_t cond; 
    pthread_mutex_init(&lock, NULL);
    pthread_cond_init(&cond, NULL);

    pthread_t *worker = (pthread_t *)calloc(1, sizeof(pthread_t));
    pack *pck = (pack *)calloc(1, sizeof(pack));
    pck->time = nach;
    pck->lock = &lock;
    pck->MAX_TIME = 2;
    pck->END = 2;

    overshootComputations(&inc, worker, pck);
    findMaxComputationsInTime(&inc, worker, pck, vor, nach);
    
/*    gettimeofday(&vor,NULL);
    loop_int();
    gettimeofday(&nach,NULL);
    verstrichene_zeit = ( 1000000.0*(nach.tv_sec - vor.tv_sec) + 
                                (nach.tv_usec - vor.tv_usec))/1000000.0;
    fprintf(stdout,"Verstrichene Zeit: %.3lf seconds\n",verstrichene_zeit);

    gettimeofday(&vor,NULL);
    loop_double();
    gettimeofday(&nach,NULL);
    verstrichene_zeit = ( 1000000.0*(nach.tv_sec - vor.tv_sec) + 
                                (nach.tv_usec - vor.tv_usec))/1000000.0;
    fprintf(stdout,"Verstrichene Zeit: %.3lf seconds\n",verstrichene_zeit);

    gettimeofday(&vor,NULL);
    loop_long();
    gettimeofday(&nach,NULL);
    verstrichene_zeit = ( 1000000.0*(nach.tv_sec - vor.tv_sec) + 
                                (nach.tv_usec - vor.tv_usec))/1000000.0;
    fprintf(stdout,"Verstrichene Zeit: %.3lf seconds\n",verstrichene_zeit);

    gettimeofday(&vor,NULL);
    loop_long_int();
    gettimeofday(&nach,NULL);
    verstrichene_zeit = ( 1000000.0*(nach.tv_sec - vor.tv_sec) + 
                                (nach.tv_usec - vor.tv_usec))/1000000.0;
    fprintf(stdout,"Verstrichene Zeit: %.3lf seconds\n",verstrichene_zeit);
*/
}

