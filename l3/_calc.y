/* lista 3 jftt przerabianie notacji infixowej na odwrotną polską, pomijanie komentarzy */
/* algorytm

 
     Póki zostały symbole do przeczytania wykonuj:

        Przeczytaj symbol.

            Jeśli symbol jest liczbą dodaj go do kolejki wyjście.

            Jeśli symbol jest operatorem, o1, wtedy:

            1) dopóki na górze stosu znajduje się operator, o2 taki, że:

                        o1 jest lewostronnie łączny i jego kolejność wykonywania jest mniejsza lub równa kolejności wyk. o2,
                           lub
                        o1 jest prawostronnie łączny i jego kolejność wykonywania jest mniejsza od o2,

                zdejmij o2 ze stosu i dołóż go do kolejki wyjściowej i wykonaj jeszcze raz 1)

            2) włóż o1 na stos operatorów.

            Jeżeli symbol jest lewym nawiasem to włóż go na stos.
                        Jeżeli symbol jest prawym nawiasem to zdejmuj operatory ze stosu i dokładaj je do kolejki wyjście, dopóki symbol na górze stosu nie jest lewym nawiasem, kiedy dojdziesz do tego miejsca zdejmij lewy nawias ze stosu bez dokładania go do kolejki wyjście. Teraz, jeśli najwyższy element na stosie jest funkcją, także dołóż go do kolejki wyjście. Jeśli stos zostanie opróżniony i nie napotkasz lewego nawiasu, oznacza to, że nawiasy zostały źle umieszczone.

    Jeśli nie ma więcej symboli do przeczytania, zdejmuj wszystkie symbole ze stosu (jeśli jakieś są) i dodawaj je do kolejki wyjścia. (Powinny to być wyłącznie operatory, jeśli natrafisz na jakiś nawias oznacza to, że nawiasy zostały źle umieszczone.)
*/

%{
#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include "calc.h"



/*inicjalizacja kolejki symboli*/
symQueue symbols = {0,(qNode *)0, (qNode *)0};
opStack st = {0, (opStackNode *)0};

%}
%union {
int     val;            /* For returning numbers. */
char  op;               /* operatory musza byc jednoznakowe */ 
char* com;              /*wskaznik do cstringa z komentarzem*/ 
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

%type <val> exp
%type <op> op0
%type <op>  op1
%type <op>  op2



%%
input:   /* empty */
     | input line
     ;

line:
      '\n'
    | exp '\n'   { printf ("\t%d\n", $1); }
    | COMMENT '\n'   { printf ("%s\n", $1); } /*tu moze byc problem z \n*/
    | error '\n' { yyerrok; }
    ;

exp: NUM                { $$ = $1; char n[20]; sprintf(n, "%d",$1); symPush(n, &symbols);  }
   | exp PLUS exp       {       $$ = $1 + $3;
                                char n1[20]; 
                                char n2[20]; 
                                sprintf(n1, "%d",$1); 
                                sprintf(n2, "%d",$3); 
                                symPush(n1, &symbols); 
                                opPush($2, 0, &st); 
                                symPush(n2, &symbols); 
                        }
   | exp MINUS exp      {       $$ = $1 - $3;  
                                char n1[20]; 
                                char n2[20]; 
                                sprintf(n1, "%d",$1); 
                                sprintf(n2, "%d",$3); 
                                symPush(n1, &symbols); 
                                opPush($2, 0, &st); 
                                symPush(n2, &symbols); 
                        }
   | exp MULT exp       {       $$ = $1 * $3;
                                char n1[20]; 
                                char n2[20]; 
                                sprintf(n1, "%d",$1); 
                                sprintf(n2, "%d",$3); 
                                symPush(n1, &symbols); 
                                opPush($2, 0, &st); 
                                symPush(n2, &symbols); 
                        }
   | exp DIV exp        {       $$ = $1 / $3;
                                char n1[20]; 
                                char n2[20]; 
                                sprintf(n1, "%d",$1); 
                                sprintf(n2, "%d",$3); 
                                symPush(n1, &symbols); 
                                opPush($2, 0, &st); 
                                symPush(n2, &symbols); 
                        }
   | '-' exp  %prec NEG { $$ = -$2;     }
   | exp POW exp        {       $$ = pow ($1, $3);
                                char n1[20]; 
                                char n2[20]; 
                                sprintf(n1, "%d",$1); 
                                sprintf(n2, "%d",$3); 
                                symPush(n1, &symbols); 
                                opPush($2, 0, &st); 
                                symPush(n2, &symbols); 
                        }
   | '(' exp ')'        { $$ = $2; }
   ;

op0 : LEFT
    ;

op1 : PLUS
    | MINUS
    | RIGHT
    ;

op2 : MULT
    | DIV
    | MOD
    | POW
    ;


%%

int yyerror (char * s)  /* Called by yyparse on error */
{
          printf ("%s\n", s);
          return 0;
}

int main ()
{
          /*init_table ();*/
            yyparse ();
}
