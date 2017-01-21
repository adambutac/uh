#include "tcp_reader.h"

 /*****************************************************
 *                                                    *
 *  *****   *      *****  ****   ****   *      *****  *
 *  **      *      *   *  **  *  **  *  *      ***    *
 *  ** ***  **     **  *  * **   *****  **       ***  *
 *  *****   *****  *****  *****  **  *  *****  *****  *
 *                                                    *
 *****************************************************/
    struct tcp_h req; 
    struct tcp_h res; 

struct tcp_h init_tcp() {

    struct tcp_h *t = (struct tcp_h *)calloc(1, sizeof(struct tcp_h));

    t->src_port     = 0;
    t->dst_port     = 0;
    t->seq          = 0;
    t->ack          = 0;
    t->data_offset  = 0;
    t->reserved     = 0;
    t->flags        = 0;
    t->window_size  = 0;
    t->checksum     = 0xffff;
    t->urgent_p     = 0;

    return *t;
}

int printheader(struct tcp_h *t){

    //printf(" 0                   1                   2                   3   \n");
    //printf(" 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 \n");
    printf("+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+\n");
    printf("|          Source Port:%u               Destination Port:%u      \n", t->src_port,  t->dst_port);
    printf("+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+\n");
    printf("|                        Sequence Number:%u                      \n",          t->seq);
    printf("+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+\n");
    printf("|                   Acknowledgement Number:%u                    \n",   t->ack);
    printf("+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+\n");
    printf("|Data Offset:%u  ",              t->data_offset);
    printf("|Reserved :%u    ",              t->reserved);
    printf("|FLAGS: ");
    if((t->flags & 32) >> 5)  printf("URG ");
    if((t->flags & 16) >> 4)  printf("ACK ");
    if((t->flags & 8)  >> 3)  printf("PSH ");
    if((t->flags & 4)  >> 2)  printf("RST ");
    if((t->flags & 2)  >> 1)  printf("SYN ");
    if((t->flags & 1))        printf("FIN ");

    printf("|Window Size:%x\n",      t->window_size);

    printf("+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+\n");
    printf("|           Checksum:0x%x                  Urgent Pointer:%u     \n", t->checksum, t->urgent_p);
    printf("+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+\n");
    return 0;
}

int readfile(char fname[]){

    FILE *f = fopen(fname, "r");
    /* The 13th and 14th bytes in the stream which contains 
     * data offset, reserved bytes, and flags.*/
    uint16_t drf = 0;

    /* Read in from file. */
    fread((void*) &(req.src_port),    sizeof(uint16_t), 1, f);
    fread((void*) &(req.dst_port),    sizeof(uint16_t), 1, f);
    fread((void*) &(req.seq),         sizeof(uint32_t), 1, f);
    fread((void*) &(req.ack),         sizeof(uint32_t), 1, f);
    fread((void*) &(drf),             sizeof(uint16_t), 1, f);
    //fread((void*) &(t.window_size), sizeof(uint16_t), 1, f);
    //fread((void*) &(t.checksum),    sizeof(uint16_t), 1, f);
    //fread((void*) &(t.urgent_p),    sizeof(uint16_t), 1, f);
    fclose(f);  

    /* Network devices like to ruin the byte order. */
    req.src_port      = ntohs(req.src_port);
    req.dst_port      = ntohs(req.dst_port);
    req.seq           = ntohl(req.seq);
    req.ack           = ntohl(req.ack);
    req.data_offset   = ntohs(drf) >> 12 ; 
    //t.reserved
    req.flags         = (uint8_t)ntohs(drf);
    //t.window_size
    //t.checksum
    //t.urgent_p
    
    return 0;
}

int writefile(char fname[]){

    /* The 13th and 14th bytes in the stream which contains 
     * data offset, reserved bytes, and flags.*/
    uint16_t drf = 0;
    struct tcp_h t = init_tcp();

    /* Network devices like to ruin the byte order. */
    t.src_port      = htons(res.src_port);
    t.dst_port      = htons(res.dst_port);
    t.seq           = htonl(res.seq);
    t.ack           = htonl(res.ack);

    drf = res.data_offset;
    drf = drf << 12;
    //t.reserved
    drf = drf | res.flags;
    drf = htons(drf);
    //t.window_size
    //t.checksum
    //t.urgent_p
    
    FILE *f = fopen(fname, "w");
    /*Write to file. */
    fwrite((void*) &(t.src_port),    sizeof(uint16_t), 1, f);
    fwrite((void*) &(t.dst_port),    sizeof(uint16_t), 1, f);
    fwrite((void*) &(t.seq),         sizeof(uint32_t), 1, f);
    fwrite((void*) &(t.ack),         sizeof(uint32_t), 1, f);
    fwrite((void*) &(drf),           sizeof(uint16_t), 1, f);
    fwrite((void*) &(t.window_size), sizeof(uint16_t), 1, f);
    fwrite((void*) &(t.checksum),    sizeof(uint16_t), 1, f);
    fwrite((void*) &(t.urgent_p),    sizeof(uint16_t), 1, f);
    fclose(f);  
    return 0;
}


int main(int argc, char **argv){
    if(argc <  2) { 
        printf("Please enter a file name.\n");
        return 1;
    }
   
    /* init(1) request response */ 
    req = init_tcp();
    res = init_tcp();
    /* Read the file and store it as data thingies. */
    readfile(argv[1]);
    printf("\n%s\n",argv[1]);
    printheader(&req);
    /* Flip the src and dst in the response. */
    res.src_port = req.dst_port;
    res.dst_port = req.src_port;
    /* Is there a syn in the house!?
     * If there is we must ack. */
    if(req.flags & (2)) res.flags = 18;
    /* Maybe fin instead?*/
    if(req.flags & (1)) res.flags = 16;
    /* Update the response Acknowledgement number. */
    res.ack = req.seq;
    res.seq = req.seq + req.data_offset * 4;
    /* Write the global thingies. */
    char newf [sizeof(argv[1]+4)];
    strcpy(newf, argv[1]);
    strcat(newf, ".new");
    writefile(newf);
    /* Read and then print what was just written. */
    readfile(newf);
    printf("\n%s\n",newf);
    printheader(&req);

    /* There should be no reason this returns anything other than 0... */
    return 0;
}
