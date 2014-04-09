%{
int slowa = 0;
int wiersze = 0;
%} 
%%
^[ \t\r]* 
[ \t\r]\n putchar(' '); 
[ \t\r]+ putchar(' ');
\n+ putchar('\n');
([^ \t\n\r]+)[ \t\n\r] ++slowa; REJECT;
\n  ++wiersze; REJECT;
%%

main()
{
	yylex();
        printf("\n%i - slow ; %i - wierszy", slowa, wiersze);
}
