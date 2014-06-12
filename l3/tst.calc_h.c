/*
 * =====================================================================================
 *
 *       Filename:  tst.calc_h.c
 *
 *    Description:  unit tests 4 structures from calc.h
 *
 *        Version:  1.0
 *        Created:  03.06.2014 20:13:55
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  Lukasz Szkup
 *   Organization:  
 *
 * =====================================================================================
 */
#include <stdio.h>
#include "calc.h"


int main(){

        char buff[100];

        symQueue symbols = {0,(qNode *)0, (qNode *)0};
        symPush('a', &symbols);
        symPush('b', &symbols);
        symPush('c', &symbols);
        symPush('d', &symbols);
        
        buff[0] = symPop( & symbols);
        buff[1] = symPop( & symbols);
        buff[2] = symPop( & symbols);
        buff[3] = symPop( & symbols);
        buff[4] = '\0';
        printf("%s\n", buff);

        opStack st = {0, (opStackNode *)0};
        opPush('+', 1, &st);
        opPush('%', 2, &st);
        opPush('+', 0, &st);
        opPush('*', 0, &st);
        opPush('^', 1, &st);
        opPush('-', 2, &st);

        buff[4] = opPop(&st)->op;
        buff[5] = opPop(&st)->op;
        buff[6] = opPop(&st)->op;
        buff[7] = opPop(&st)->op;
        buff[8] = opPop(&st)->op;
        buff[9] = opPop(&st)->op;
        buff[10] = '\0';

        printf("%s\n", buff);

        return 0;
}
