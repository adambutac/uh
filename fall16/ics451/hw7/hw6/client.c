#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netdb.h> 

void print_close(char *s);

int main(int argc, char **argv) {
  int sfd = 0;
  int port = 0;
  struct sockaddr_in saddr;
  struct hostent *server;
  
  if (argc < 3) print_close("Usage: client HOSTNAME PORT");

  port = atoi(argv[2]);
  sfd = socket(AF_INET, SOCK_STREAM, 0);

  if (sfd < 0) print_close("Error opening socket.");
  server = gethostbyname(argv[1]);

  if (server == NULL) print_close("Error, no such host.");

  saddr.sin_family = AF_INET;
  bcopy((char *)server->h_addr, (char *)&saddr.sin_addr.s_addr, server->h_length);
  saddr.sin_port = htons(port);

  if (connect(sfd,(struct sockaddr *) &saddr,sizeof(saddr)) < 0) print_close("Error connecting to server.");

  char buf[100];
  int n = read(sfd,buf,100);
  if (n < 0) print_close("Error reading from socket.");

  printf("%s\n",buf);
  close(sfd);
  return 0;
}

void print_close(char *s) {
  printf("%s\n", s);
  exit(0);
}
