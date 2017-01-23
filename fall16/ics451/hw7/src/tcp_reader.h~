#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <arpa/inet.h>
#include <string.h>

struct tcp_h {
    uint16_t    src_port;
    uint16_t    dst_port;
    uint32_t    seq;
    uint32_t    ack;
    uint8_t     data_offset:4;
    uint8_t     reserved   :6; 
    uint8_t     flags      :6;
    uint16_t    window_size;   // must be 0
    uint16_t    checksum;      // must be 0xffff
    uint16_t    urgent_p;      // must be 0
    /* D */
    /* A */
    /* T */
    /* A */
    /* A */
    /* A */
};

struct tcp_h init_tcp(); 
int printheader(struct tcp_h *t);
int readfile(char fname[]);
int writefile(char fname[]);
