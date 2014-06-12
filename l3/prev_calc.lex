%{
#include "calc.tab.h"
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

/*podaje dlugosc stringa az do \n*/
int strlen_n (char * cs){
        int i = 0;
        while(cs[i++]!='\n');
        return i;
}

/* kopiuje cstringa do nowej komorki pamieci i zwraca wskaznik do niej
 * wymagane do obslugi comentarzy
 */
char* strcpy_n (char * src){
        char * cptr;
        int i = 0;
        while(src[i++]!='\n');
        cptr = (char*) calloc(sizeof(char), i+2);
        i = 0;
        while(src[i]!='\n'){
               cptr[i]=src[i];
               ++i;
        }
        cptr[i]='\0';
        return cptr;
}

%}
comment         #.*
num             [0-9]{1,9}
endline         \n
%%
{endline}   {return ENDLINE;}
{comment}   {yylval.com = strcpy_n(yytext); return COMMENT;}
{num}       {sscanf(yytext, "%d",&yylval.val); return NUM;}
"+"     { yylval.op = yytext[0]; return PLUS;}
"-"     { yylval.op = yytext[0]; return MINUS;}
"*"     { yylval.op = yytext[0]; return MULT;}
"/"     { yylval.op = yytext[0]; return DIV;}
"%"     { yylval.op = yytext[0]; return MOD;}
"^"     { yylval.op = yytext[0]; return POW;}
"("     { yylval.op = yytext[0]; return LEFT;}
")"     { yylval.op = yytext[0]; return RIGHT;} 
%%
