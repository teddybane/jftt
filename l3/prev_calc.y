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
#define YYDEBUG 1
int yylex();
int yyerror();

/*inicjalizacja kolejki symboli*/
symQueue symbols = {0,(qNode *)0, (qNode *)0};
opStack st = {0, (opStackNode *)0};
char outBuff[500];
char * opBuffTab[500];

%}
%union {
int   val;              /* For returning numbers. */
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
%token ENDLINE

%type <val> exp

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
    | exp ENDLINE          {
                                qNode*  ptr  = symbols.fst;
                                int i = symbols.size;
                                /*drukowanie listy liczb*/
                                char * c;
                                while(--i >=0){
                                        c = symPop(&symbols);
                                        printf("%s ", c);
                                }
                                /*drukowanie listy operatorów*/
                                while(st.size >0){
                                        
                                        printf("%c",opPop(&st));
                                }
                                printf ("\n");
                                printf ("\t wynik: %d \n", $1);
                        }
    | COMMENT ENDLINE   {printf("%s\n", $1);}                   
    | error ENDLINE        { yyerrok; }
    ;

exp: NUM                { $$ = $1; char n[20]; sprintf(n, "%d",$1); symPush(n, &symbols);  }
   | exp PLUS exp       {       $$ = $1 + $3; 
                                opPush($2, 0, &st); 
                        }
   | exp MINUS exp      {       $$ = $1 - $3;  
                                opPush($2, 0, &st); 
                        }
   | exp MULT exp       {       $$ = $1 * $3;
                                opPush($2, 0, &st); 
                        }
   | exp DIV exp        {       $$ = $1 / $3;
                                opPush($2, 0, &st); 
                        }
   | exp MOD exp        {       $$ = $1 % $3;
                                opPush($2, 0, &st); 
                        }
   | MINUS exp  %prec NEG       { 
                                        $$ = -$2;
                                        symPush("-", &symbols);
                                        /* wstawic minus w symbole   */
                                        /* tu bardziej skomplikowane operacje*/
                                }
   | exp POW exp        {       $$ = pow ($1, $3);
                                opPush($2, 0, &st); 
                        }
   | LEFT exp RIGHT     { 
                                
   /*| LEFT exp           {
                                opPush($1, 0, &st); 
                        }
   | RIGHT              {
                                //wrzucic do kolejki wszysko az do LEFT
                                char op = 'a';
                                while(op != '('){
                                        op = opPop(&st);
                                        char * c = (char * ) calloc(2, sizeof(char));
                                        c[0] = op;
                                        c[1] = '\0';
                                        symPush(c, &symbols);
                                }
                        }

   | LEFT               {
                                int i = 0;
                                //dochodzimy do pustego pola
                                while (opBuffTab[i] !=0){
                                        i++;
                                }
                                //rezerwujemy 
                                char * opBuff = (char *) calloc(st.size+1, sizeof(char));
                                opBuff[st.size] = '\0';
                                int l = 0;
                                int k = st.size;
                                while( l++ < k){
                                        opBuff[l] = opPop(&st);
                                }

                                opBuffTab[i] = opBuff;
                                //zrzucenie operatorów do opBuff przechowywanego w tablicy opBuffTab
                                // nalezy zachowac kolenosc outBuff-orow czyli nie tablica a stos
                                
                        }
   | RIGHT          {
                                // wstawienie stosu do kolejki sybmoli
                                while(st.size >0){
                                        fromOpToSym(&st, &symbols);
                                }

                                int i = 0;
                                while (opBuffTab[i] !=0){
                                        i++;
                                }
                                if(i ==0){
                                //rzuc bledem skladni
                                }
                                else --i;//index ostatniego niepustego w tablicy
                                
                                char * opBuff = opBuffTab[i];
                                // wrzucenie bufora na stos
                                char c ='a';
                                int m;
                                for (m = 0; c != '\0'; m++){
                                       opPush(opBuff[m],0, &st); 
                                }

                        }    */
   ;

%%

int yyerror (char * s)  /* Called by yyparse on error */
{
          printf ("%s\n", s);
          return 0;
}

int main ()
{
        int i;
        for(i = 0; i < 500;i++){
                opBuffTab[i] = 0;
                }
        yydebug = 1;
            yyparse ();
            return 0;
}
