%{
#include <string.h>
#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include "calc.h"
#define YYDEBUG 1
int yylex();
int yyerror( char * s);



%}

%union {
char op;               /* operatory musza byc jednoznakowe */ 
char *com;              /*wskaznik do cstringa z komentarzem+| */
int val;
struct ret *r;
};


%token <com> COMMENT
%token <val> NUM
%token <op> PLUS
%token <op> MINUS
%token <op> MULT
%token <op> DIV
%token <op> MOD
%token <op> POW
%token <op> NEG 
%token <op> LEFT
%token <op> RIGHT
%token ENDLINE

%type <r> exp

%left MINUS PLUS
%left MULT DIV
%left NEG
%right POW

%%
input:   /* empty */
     | input line 
     ;

line: 
    ENDLINE                
    | exp ENDLINE          { printf("\twynik: %d\n\t RPN: %s\n", $1->val, $1->RPN); }
    | COMMENT ENDLINE      { printf("%s\n", $1);}                   
    | error ENDLINE        { yyerrok; }
    ;


exp: NUM                {   char n[20]; sprintf(n, "%d",$1); $$ = new_ret($1, n);}
   | exp PLUS exp       {
                                    
                                int n = $1->val + $3->val; 
                                char* rpn = (char*) calloc(strlen($1->RPN)+strlen($3->RPN)+2, sizeof (char));
                                strcat( rpn, $1->RPN);
                                strcat(rpn, " ");
                                strcat(rpn, $3->RPN);
                                strcat(rpn, "+");
                                $$ = new_ret(n, rpn);
                        }
   | exp MINUS exp      { 
                                int n = $1->val - $3->val; 
                                char* rpn = (char*) calloc(strlen($1->RPN)+strlen($3->RPN)+2, sizeof (char));
                                strcpy( rpn, $1->RPN);
                                strcat(rpn, " ");
                                strcat(rpn, $3->RPN);
                                strcat(rpn, "-");
                                $$ = new_ret(n, rpn);
                        }
   | exp MULT exp       { 
                                int n = $1->val * $3->val; 
                                char* rpn = (char*) calloc(strlen($1->RPN)+strlen($3->RPN)+2, sizeof (char));
                                strcpy( rpn, $1->RPN);
                                strcat(rpn, " ");
                                strcat(rpn, $3->RPN);
                                strcat(rpn, "*");
                                $$ = new_ret(n, rpn);
                        }
   | exp DIV exp        { 
                                int n = $1->val / $3->val; 
                                char* rpn = (char*) calloc(strlen($1->RPN)+strlen($3->RPN)+2, sizeof (char));
                                strcpy( rpn, $1->RPN);
                                strcat(rpn, " ");
                                strcat(rpn, $3->RPN);
                                strcat(rpn, " ");
                                strcat(rpn, "/");
                                $$ = new_ret(n, rpn);
                        }
   | exp MOD exp        { 
                                int n = $1->val % $3->val; 
                                char* rpn = (char*) calloc(strlen($1->RPN)+strlen($3->RPN)+2, sizeof (char));
                                strcpy(rpn, $1->RPN);
                                strcat(rpn, " ");
                                strcat(rpn, $3->RPN);
                                strcat(rpn, " ");
                                strcat(rpn, "%");
                                $$ = new_ret(n, rpn);
                        }
   | MINUS exp  %prec NEG       {
                                        int n = $2->val;
                                        n = n* (-1);
                                        char* rpn = (char*) calloc(strlen($2->RPN)+2, sizeof( char ));
                                        strcpy(rpn, "-");
                                        strcat(rpn, $2->RPN);
                                        $$ = new_ret(n, rpn);
                                }
   | exp POW exp        { 
                                int n = pow($1->val,  $3->val); 
                                char* rpn = (char*) calloc(strlen($1->RPN)+strlen($3->RPN)+2, sizeof (char));
                                strcpy(rpn, $1->RPN);
                                strcat(rpn, " ");
                                strcat(rpn, $3->RPN);
                                strcat(rpn, " ");
                                strcat(rpn, "^");
                                $$ = new_ret(n, rpn);
                        }
   | LEFT exp RIGHT     {       
                                $$ = $2;
                        } 
   ;

%%

int yyerror (char * s)  /* Called by yyparse on error */
{
          printf ("%s\n", s);
          return 0;
}

int main ()
{
        yydebug = 0;
            yyparse ();
            return 0;
}
