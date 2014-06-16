
struct numString{
        char * s;
        int size; /*  niby dowolnej dlugosci ale jednak zachowajmy rozsadek */
}

typedef struct numString numStr;

numStr * new_numStr(char* in){
        int 
        char * r = (char* ) calloc( strlen(in), sizeof(char));
        strcpy(r, in);
}


