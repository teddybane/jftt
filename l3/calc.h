/*  naglowki do listy 3 jftt */
#ifndef CALC_H
#define CALC_H
#include <stdlib.h>
#include <stdio.h>
#include <string.h>


struct ret{
        int val;
        char *RPN;
};

typedef struct ret ret;

ret * new_ret(int v, char * rpn){
        ret * r = (ret *) malloc( sizeof(struct ret));
        char * s = (char *) calloc(strlen(rpn), sizeof(char));
        strcpy(s, rpn);
        r->val = v;
        r->RPN = s;
return r;
}

/*class retstru{
        public:
        std::string *RPN;
        int val;

        retstru(std::string *rpn, int val){
                this->RPN = rpn;
                this-> val = val;
        }
};*/


/* typedef class retstru retstru;
 */


/*pojedynczy node kolejki symboli
 *   !!!!!!!!!!!!!!!! nieuzywane !!!!!!!!!!!!!!!!!!!!!!
 */
struct q_node{
        struct q_node* prev;
        struct q_node* next;
        char * c;
        };

typedef struct q_node qNode;

/* dedklaracja kolejki
 *   !!!!!!!!!!!!!!!! nieuzywane !!!!!!!!!!!!!!!!!!!!!!
 */
struct queue{
        int size;
        qNode * fst;
        qNode * lst;
        };

typedef struct queue symQueue;


 /*   !!!!!!!!!!!!!!!! nieuzywane wszystko ponizej !!!!!!!!!!!!!!!!!!!!!!
 */
void symPush(char * a, symQueue* sq){

       /*  printf("jestem w symPush\n\tdodaje: %s :\n", a);*/
        qNode * last = sq->lst;
/*         printf("\tvar last : %p\n",last);
 */
/*         printf("utworzylem last\n");
 */
        qNode * ptr = (qNode *) malloc (sizeof (qNode)); /*dynamiczne alokowanie pamieci na tablice syboli*/
/*         printf("\tvar ptr : %p\n",ptr);
 */
        
/*         printf("utworzylem ptr\n");
 */
        ptr->c = (char*) calloc(strlen(a), sizeof(char));
        strcpy(ptr->c, a);
/*         printf("przypisalem ptr->c = a\n");
 */
        if ( (sq->size) >0){
/*                printf("\tjestem w if\n");*/
                ptr->prev = last; /*poprzednikiem dodawanego lementu jest poprzedni ostatni*/
                sq->lst = ptr;        /*  obecym ostanim jest dodawany */
                last->next = ptr; /*nastepca przedostatniego jest dodawany*/
/*                printf("\t\tvar last->next: %p\n", last->next);*/

                ptr->next = ptr; /*nastepca ostatniego elementu jest on sam*/
                (sq->size)++;
/*                 printf("if var last: %p\n",last);
 */

/*                 printf("dodalem :%s:\n", sq->lst->c);
                printf("rozmiar kolejki to %d\n", sq->size);
                printf("\t\tsq->lst->c %s\n", sq->lst->c );
                printf("last->c: %s\n", last->c );
                printf("\t\tsq->lst->prev->c %s\n", sq->lst->prev->c );
 */
        }
        else{
/*                 printf("jestem w elese\n");
 */
                ptr->prev = ptr;
/*                 printf("prev ptr jest on sam\n");
 */
                ptr->next = ptr;
/*                 printf("next ptr jest on sam\n");
 */
                sq->fst = ptr;
/*                 printf("pierwszym sq jest ptr\n");
 */
                sq->size++;
/*                 printf("powiekszony size sq\n");
 */

                sq->lst = ptr;
/*                 printf("\t\tdodalem :%s:\n", sq->lst->c);

                printf("\t\trozmiar kolejki to %d\n", sq->size);
                printf("\t\telementem przedostatnim(lst) jest %s\n", sq->lst->prev->c );
 */
        }
}
char * symPop(symQueue *sq){
/*         printf("jestem w symPop()\n");
 */
        char *  r;
/*         printf("\tsize: %d\n", sq->size);
 */
        r = sq->fst->c;
        qNode * old = sq->fst;
/*         printf("\tvar old: %p\n", old);
 */
        sq->fst = sq->fst->next;
/*         printf("\tvar new fst: %p\n", sq->fst);
 */
        free(old);
/*         printf("\tzwracam %s\n", r);
 */
        sq->size--;
        return r;
}
 
struct op_stack_node{
        int type;
        char op;
        struct op_stack_node * prev;
};
typedef struct op_stack_node opStackNode;

struct op_stack {
        int size;
        opStackNode * lst;
};

typedef struct op_stack opStack;

void opPush(char c, int t, opStack * S){
        opStackNode * ptr = (opStackNode *)malloc(sizeof (opStackNode));
        ptr->type = t;
        ptr->op = c;

        if (S->size > 0){
                ptr->prev = S->lst;
                S->lst = ptr;
                S->size++;
        }else
        { 
                S->lst = ptr;
                ptr->prev = ptr;
                S->size++;
        }
}

char opPop( opStack* S){
        S->size--;
       opStackNode * old = S->lst;
       S->lst = old->prev;
       char c = old->op;
       free(old);
       return c;
}

void fromOpToSym( opStack * os, symQueue * sq){
        char op = opPop(os);
        char * c = (char * ) calloc(2, sizeof(char));
        c[0] = op;
        c[1] = '\0';
        symPush(c, sq);
}
#endif
