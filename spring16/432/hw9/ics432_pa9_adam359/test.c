#include <stdio.h>
#include <stdlib.h>

int main(int argv, char **argc){
    int array[3][3];
    int (*meep)[3][3];
    meep = &array;
    int num = 0;
    //(*meep)[0][0] = 0;
    for(int i = 0; i < 3; i++){
        for(int j = 0; j < 3; j++){
            //array[i][j] = i+j;
            printf("%d-",(*meep)[i][j]);
            //printf("%d-", (*(*((*meep)+i))+j));
        }
    }
}
