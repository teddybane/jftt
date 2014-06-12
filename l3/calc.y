%{
#include <iostream>
#include <string>
#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include "calc.h"
#define YYDEBUG 1
using namespace std;
int yylex();
int yyerror( char * s);


%}

%union {
        char            op;               /* operatory musza byc jednoznakowe */ 
/*        std::string     *com;              |+wskaznik do cstringa z komentarzem+| */
        int             val;
        ret             *r;
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
    | exp ENDLINE          { }
   /*| COMMENT ENDLINE   {std::cout<<*$1<<std::endl;}                   */
    | error ENDLINE        { yyerrok; }
    ;

exp: NUM                {   char n[20]; sprintf(n, "%d",$1); std::string * s = new string(n); ret *r = new ret(s,$1);  $$ = r ;}
   | exp PLUS exp       {
                                //std::cout<<$1<<" "<<$3<<" "<<$2<<std::endl;
                                std::string *s = new string( *($1->RPN) + *($3->RPN) );
                                int n = $1->val + $3->val;
                                $$ = new ret(s, n);
                        }
   /*| exp MINUS exp      { std::cout<<$1<<" "<<$3<<" "<<$2<<std::endl;   $$ = $1 - $3;  }
   | exp MULT exp       { std::cout<<$1<<" "<<$3<<" "<<$2<<std::endl;   $$ = $1 * $3; }
   | exp DIV exp        { std::cout<<$1<<" "<<$3<<" "<<$2<<std::endl;   $$ = $1 / $3;  }
   | exp MOD exp        { std::cout<<$1<<" "<<$3<<" "<<$2<<std::endl;   $$ = $1 % $3;  }
   | MINUS exp  %prec NEG       { $$ = -$2; }
   | exp POW exp        {       $$ = pow ($1, $3); }
   | LEFT exp RIGHT     {                       } */
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
