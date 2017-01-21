default: server.c client.c 
	make server
	make client	

server: server.c 
	gcc -pthread -o server server.c -I.

client: client.c 
	gcc -o client client.c -I.

