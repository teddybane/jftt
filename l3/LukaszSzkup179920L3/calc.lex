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
{comment}   {yylval.com = (char*) calloc(strlen(yytext), sizeof(char)); strcpy(yylval.com, yytext); return COMMENT;}
{num}       {yylval.val = atoi(yytext); return NUM;}
"+"     { /*yylval.op = yytext[0];*/ return PLUS;}
"-"     { /*yylval.op = yytext[0];*/  return MINUS;}
"*"     { /*yylval.op = yytext[0];*/  return MULT;}
"/"     { /*yylval.op = yytext[0];*/  return DIV;}
"%"     { /*yylval.op = yytext[0];*/  return MOD;}
"^"     { /*yylval.op = yytext[0];*/  return POW;}
"("     { /*yylval.op = yytext[0];*/  return LEFT;}
")"     { /*yylval.op = yytext[0];*/  return RIGHT;} 

        /* "+"     { yylval.op = new std::string (yytext); return PLUS;}
"-"     { yylval.op = new std::string (yytext); return MINUS;}
"*"     { yylval.op = new std::string (yytext); return MULT;}
"/"     { yylval.op = new std::string (yytext); return DIV;}
"%"     { yylval.op = new std::string (yytext); return MOD;}
"^"     { yylval.op = new std::string (yytext); return POW;}
"("     { yylval.op = new std::string (yytext); return LEFT;}
")"     { yylval.op = new std::string (yytext); return RIGHT;} */
%%
