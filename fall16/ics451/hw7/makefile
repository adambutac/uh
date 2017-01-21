default: ./src/server.c ./src/client.c 
	make server
	make client	
	make tcp_reader

tcp_reader: ./src/tcp_reader.c ./src/tcp_reader.h
	gcc -o ./bin/tcp_reader ./src/tcp_reader.c

server: ./src/server.c 
	gcc -pthread -o ./bin/server ./src/server.c -I.

client: ./src/client.c 
	gcc -o ./bin/client ./src/client.c -I.

