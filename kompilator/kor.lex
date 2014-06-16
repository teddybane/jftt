%{

%}
identifier      [_a-z]+
num             [0-9]* /*uwaga na dlugosc, nie ma ograniczen czyli moze sie nie miescic w incie liczby naturalne*/
endline         \n
comment         (\*.*\*) /*uwaga na nowe linie trzeba zrobic na stanach*/
read            READ
write           WRITE
progeq          ==
equal           =
przypisanie     :=
plus            +
minus           -
mult            *
div             /
mod             %
neq             !=
less            <
more            >
lesswq          <=
moreeq          >=

%%
{identifier}    {return IDENTIFIER;}
{num}           {return NUM;}
{endline}       {return ENDLINE;}
{comment}       {return COMMENT;}
{read}          {return READ;}
{write}         {return WRITE;}
{equal}         {return EQ;}
{przypisanie}   {return PRZYPISANIE;}
{plus}          {return PLUS;}
{minus}         {return MINUS;}
{mult}          {return MULT;}
{div}           {return DIV;}
{mod}           {return MOD;}
{progeq}        {return PROGEQ;}
{neq}           {return NEQ;}
{less}          {return LESS;}
{more}          {return MORE;}
{lesseq}        {return LESSEQ;}
{moreeq}        {return MOREEQ;}
%%
