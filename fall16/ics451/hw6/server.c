#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <unistd.h>
#include <string.h>
#include <signal.h>

#include <sys/time.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>

#include <pthread.h>

static volatile bool running = true; 

struct work_args {
  int id; /* Thread ID */
  int lsfd; /* Listening Socket File Descriptor */
};

struct server_args {
  int port;
  int threads;
  bool debug;
};

int gehoren();
void send_date_and_time(int id);
void *do_work(void *arg);
void print_usage();
void start_server();
void parse_args();
void server_shutdown(int undef);

int main(int argc, char **argv) {
  struct server_args args;
  parse_args(&args, argc, argv);
  //signal(SIGINT, server_shutdown);
  start_server(args); 
  exit(0);
}

/**
 * Main entry point which starts all listening threads. */
void start_server(struct server_args sargs) {
  /* Thread things */
  int numthreads = sargs.threads;
  pthread_t *pool = (pthread_t *)calloc(numthreads, sizeof(pthread_t));
  struct work_args wargs[numthreads]; 
  
  /* Listening port things */
  int sfd = gehoren(sargs.port);

  /* Start all the threads */
  for(int i = 0; i < numthreads; i++){
    wargs[i].id = i;
    wargs[i].lsfd = sfd;
    if(pthread_create(&pool[i], NULL, do_work, (void*)(&wargs[i]))){
      if(sargs.debug) printf("Error creating thread, exiting...\n");
      exit(1);
    }
  }
  
  /* On exit join all the threads together. */
  for(int i = 0; i < numthreads; i++){
    pthread_join(pool[i], NULL);
  }
}

/**
 * Start the listening port.
 * Return the socket file descriptor. */
int gehoren(int port){
  int slport = port;
  struct sockaddr_in saddr;
  saddr.sin_family = AF_INET;
  saddr.sin_addr.s_addr = INADDR_ANY;
  saddr.sin_port = htons(slport);
  int sfd = socket(AF_INET, SOCK_STREAM, 0); 

  if(sfd < 0) {
    printf("[%d]: Error creating socket.\n");
  } else if(bind(sfd, (struct sockaddr *) &saddr, sizeof(saddr)) < 0) {
    printf("[Server]: Error binding receiver socket to address.\n");
  } else {  
    listen(sfd, 5); 
    printf("[Server]: Listening on port %d.\n", slport);
  }

  return sfd;
}

void *do_work(void *arg){
  struct work_args *args = (struct work_args*)arg;
  int id = args->id; 
  int lsfd = args->lsfd;
  struct sockaddr_in caddr; 

  while(running){
    /* server socket sender file descriptor */
    socklen_t csize = sizeof(caddr);

    printf("[%d]: Waiting for connection... \n", id);
    int csfd = accept(lsfd, (struct sockaddr *) &caddr, &csize); 

    if(csfd < 0) {
      printf("[%d]: Error accepting sender socket. \n", id);
      exit(1);
    }

    printf("[%d]: Connection established. \n", id);
    send_date_and_time(csfd);
    close(csfd);
  }
}

void send_date_and_time(int sfd){
  time_t t = time(0);
  const char *f = "%c";
  struct tm *tmp;
  char s[100];

  tmp = localtime(&t);
  strftime(s, sizeof(s), f, tmp);
  write(sfd, s, sizeof(s));
}

/**
 *  Extra things.
 * */

void print_usage() {
  printf("Usage: server [OPTION]... [PORT]\n");
  printf("\t-t, --threads\t\tUse n number of listening threads.\n");
  printf("\t-d, --debug\t\tPrint helpful debug information.\n");
  exit(1);
}

void parse_args(struct server_args* args, int argc, char **argv) {
  int numflags = 4;
  char* flags[] = {"-t","--threads","-d","--debug"};
  int threads = 0;
  bool debug = false; 
  int min_port = 25000;
  int port = atoi(argv[argc - 1]);

  if( min_port > port) {
    printf("PORT must be greater than or equal to %d\n", min_port);  
    print_usage();
  }

  for(int i = 1; i < argc - 1; i++) {
    int j = 0;
    while(j < numflags && !(strncmp(argv[i], flags[j], 20) == 0)) j++;

    if(j >= numflags) {
      printf("Values must be seperated by a space. ex \"-t 4\" will work but \"-t4\" will not."); 
    } else if(!(strncmp(argv[i], flags[j], 20) == 0)){
      print_usage();
    } else {
      if(j == 0 || j == 1){
        i++;
        threads = atoi(argv[i]); 
      } else if(j == 2 || j == 3) {
        debug = true;
      }
    }
  }

  args->port = port;
  args->threads = threads;
  args->debug = debug;
}

void server_shutdown(int undef) {
  printf("Shutting down...");
  running = false;
}
