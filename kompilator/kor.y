%{


%}

%token IDENTIFIER
%token NUM
%token READ
%token WRITE
%token COMMENT
%token ENDLINE
%token EQ
%token PRZYPISANIE
%token PLUS
%token MINUS
%token MULT
%token DIV
%token MOD
%token PROGEQ
%token NEQ
%token LESS
%token MORE
%token LESSEQ
%token MOREEQ

%type cdeclarations
%type commands
%type command
%type expression
%type condition

%%
program         : CONST cdeclarations VAR vdeclarations BEGIN commands END      {}
                ;

cdeclarations   : cdeclarations IDENTIFIER EQ NUM                               {}
                ; 

vdeclarations   : vdeclarations IDENTIFIER                                      {}
                ;

commands        : commands command                                              {}
                | command                                                       {}
                ;

command         : IDENTIFIER PRZYPISANIE expression                             {}
                | IF condition THEN commands ELSE commands END                  {}
                | WHILE condition DO commands END                               {}
                | READ IDENTIFIER                                               {}
                | WRITE IDENTIFIER                                              {}
                ;

expression      : NUM                                                           {}
                | IDENTIFIER                                                    {}
                | IDENTIFIER PLUS IDENTIFIER                                    {}
                | IDENTIFIER MINUS IDENTIFIER                                   {}
                | IDENTIFIER MULT IDENTIFIER                                    {}
                | IDENTIFIER DIV IDENTIFIER                                     {}
                | IDENTIFIER MOD IDENTIFIER                                     {}
                ;

condition       :  IDENTIFIER PROGEQ IDENTIFIER                                 {}
                | IDENTIFIER NEQ IDENTIFIER                                     {}
                | IDENTIFIER LESS IDENTIFIER                                    {}
                | IDENTIFIER MORE IDENTIFIER                                    {}
                | IDENTIFIER LESSEQ IDENTIFIER                                  {}
                | IDENTIFIER MOREEQ IDENTIFIER                                  {}
                ;


%%
